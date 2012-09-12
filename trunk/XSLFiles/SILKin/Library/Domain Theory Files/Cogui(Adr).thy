;;  Horn Clause Representation of Cogui(Adr) Kinship Term-of-Address Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Cogui(Adr)") (author, "Linda Gawthorne") (date, "1985-01-01") (citation, "Linda Gawthorne in SOUTH AMERICAN KINSHIP pp. 35-42") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, true) (recursiveLevels, 2)
(synonyms, (nema, jasaldu))
(umbrellas, (augui, (augui_dueba, augui_sukkua)), (noma, (noma_dueba, noma_sukkua)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

augui(Alter, Ego) :-  female(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter).
                  |   female(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_HuBro_HuBroDaDaSo_HuBroDaSo_HuBroDaSoSo_HuBroSo_HuBroSoDaSo_HuBroSoSo_HuBroSoSoSo_HuFaBro_HuFaBroDaDaSo_HuFaBroDaSo_HuFaBroDaSoSo_HuFaBroSo_HuFaBroSoDaSo_HuFaBroSoSo_HuFaBroSoSoSo_HuFaSisDaDaSo_HuFaSisDaSo_HuFaSisDaSoSo_HuFaSisSo_HuFaSisSoDaSo_HuFaSisSoSo_HuFaSisSoSoSo_HuMoBro_HuMoBroDaDaSo_HuMoBroDaSo_HuMoBroDaSoSo_HuMoBroSo_HuMoBroSoDaSo_HuMoBroSoSo_HuMoBroSoSoSo_HuMoSisDaDaSo_HuMoSisDaSo_HuMoSisDaSoSo_HuMoSisSo_HuMoSisSoDaSo_HuMoSisSoSo_HuMoSisSoSoSo_HuSisDaDaSo_HuSisDaSo_HuSisDaSoSo_HuSisSo_HuSisSoDaSo_HuSisSoSo_HuSisSoSoSo_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu"}
;; 0
%augui:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%augui:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%augui:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 4
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 5
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 6
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 7
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 8
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 9
%augui:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 11
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 12
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 13
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 14
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 15
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 16
%augui:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 17
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 18
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 19
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 20
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 21
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 22
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 23
%augui:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 24
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 25
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 26
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 27
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 28
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 29
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 30
%augui:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 31
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 32
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter).
;; 33
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 34
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 35
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter).
;; 36
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 37
%augui:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 38
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 39
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter).
;; 40
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 41
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 42
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter).
;; 43
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 44
%augui:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 45
%augui:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter).
;; 46
%augui:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter).
;; 47
%augui:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter).
;; 48
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter).
;; 49
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 50
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 51
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 52
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 53
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 54
%augui:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 55
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter).
;; 56
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 57
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 58
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 59
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 60
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 61
%augui:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 62
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter).
;; 63
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 64
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 65
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 66
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 67
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 68
%augui:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 69
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter).
;; 70
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 71
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 72
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 73
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 74
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 75
%augui:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 76
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter).
;; 77
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 78
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 79
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 80
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 81
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 82
%augui:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 83
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter).
;; 84
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 85
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 86
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 87
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 88
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 89
%augui:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).


augui_dueba(Alter, Ego) :-  female(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter), elder(Alter, Ego).
                        |   female(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter), elder(Alter, Ego).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_HuBro_HuBroDaDaSo_HuBroDaSo_HuBroDaSoSo_HuBroSo_HuBroSoDaSo_HuBroSoSo_HuBroSoSoSo_HuFaBro_HuFaBroDaDaSo_HuFaBroDaSo_HuFaBroDaSoSo_HuFaBroSo_HuFaBroSoDaSo_HuFaBroSoSo_HuFaBroSoSoSo_HuFaSisDaDaSo_HuFaSisDaSo_HuFaSisDaSoSo_HuFaSisSo_HuFaSisSoDaSo_HuFaSisSoSo_HuFaSisSoSoSo_HuMoBro_HuMoBroDaDaSo_HuMoBroDaSo_HuMoBroDaSoSo_HuMoBroSo_HuMoBroSoDaSo_HuMoBroSoSo_HuMoBroSoSoSo_HuMoSisDaDaSo_HuMoSisDaSo_HuMoSisDaSoSo_HuMoSisSo_HuMoSisSoDaSo_HuMoSisSoSo_HuMoSisSoSoSo_HuSisDaDaSo_HuSisDaSo_HuSisDaSoSo_HuSisSo_HuSisSoDaSo_HuSisSoSo_HuSisSoSoSo_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu"}
;; 0
%augui_dueba:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 1
%augui_dueba:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 2
%augui_dueba:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 3
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 4
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 5
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 6
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 7
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 8
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 9
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 10
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 11
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 12
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 13
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 14
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 15
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 16
%augui_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 17
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 18
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 19
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 20
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 21
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 22
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 23
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 24
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 25
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 26
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 27
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 28
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 29
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 30
%augui_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 31
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 32
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 33
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 34
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 35
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 36
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 37
%augui_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 38
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 39
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 40
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 41
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 42
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 43
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 44
%augui_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 45
%augui_dueba:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter), elder(Alter, Ego).
;; 46
%augui_dueba:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 47
%augui_dueba:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 48
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 49
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 50
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 51
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 52
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 53
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 54
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 55
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 56
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 57
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 58
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 59
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 60
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 61
%augui_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 62
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 63
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 64
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 65
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 66
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 67
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 68
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 69
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 70
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 71
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 72
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 73
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 74
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 75
%augui_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 76
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 77
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 78
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 79
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 80
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 81
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 82
%augui_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 83
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 84
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 85
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 86
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 87
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 88
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 89
%augui_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).


augui_sukkua(Alter, Ego) :-  female(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter), younger(Alter, Ego).
                         |   female(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter), younger(Alter, Ego).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_HuBro_HuBroDaDaSo_HuBroDaSo_HuBroDaSoSo_HuBroSo_HuBroSoDaSo_HuBroSoSo_HuBroSoSoSo_HuFaBro_HuFaBroDaDaSo_HuFaBroDaSo_HuFaBroDaSoSo_HuFaBroSo_HuFaBroSoDaSo_HuFaBroSoSo_HuFaBroSoSoSo_HuFaSisDaDaSo_HuFaSisDaSo_HuFaSisDaSoSo_HuFaSisSo_HuFaSisSoDaSo_HuFaSisSoSo_HuFaSisSoSoSo_HuMoBro_HuMoBroDaDaSo_HuMoBroDaSo_HuMoBroDaSoSo_HuMoBroSo_HuMoBroSoDaSo_HuMoBroSoSo_HuMoBroSoSoSo_HuMoSisDaDaSo_HuMoSisDaSo_HuMoSisDaSoSo_HuMoSisSo_HuMoSisSoDaSo_HuMoSisSoSo_HuMoSisSoSoSo_HuSisDaDaSo_HuSisDaSo_HuSisDaSoSo_HuSisSo_HuSisSoDaSo_HuSisSoSo_HuSisSoSoSo_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu"}
;; 0
%augui_sukkua:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 1
%augui_sukkua:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 2
%augui_sukkua:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 3
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 4
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 5
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 6
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 7
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 8
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 9
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 10
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 11
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 12
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 13
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 14
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 15
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 16
%augui_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 17
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 18
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 19
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 20
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 21
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 22
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 23
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 24
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 25
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 26
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 27
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 28
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 29
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 30
%augui_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 31
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 32
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 33
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 34
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 35
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 36
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 37
%augui_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 38
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 39
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 40
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 41
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 42
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 43
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 44
%augui_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 45
%augui_sukkua:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter), younger(Alter, Ego).
;; 46
%augui_sukkua:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 47
%augui_sukkua:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 48
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 49
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 50
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 51
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 52
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 53
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 54
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 55
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 56
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 57
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 58
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 59
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 60
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 61
%augui_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 62
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 63
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 64
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 65
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 66
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 67
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 68
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 69
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 70
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 71
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 72
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 73
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 74
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 75
%augui_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 76
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 77
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 78
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 79
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 80
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 81
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 82
%augui_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 83
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 84
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 85
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 86
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 87
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 88
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 89
%augui_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


child[aux]04(Alter, Ego) :-  child(Alter, Ego).
                         |   children(A, Ego), child(Alter, A).
                         |  [ext],  children(A, Ego), children(B, A), lineal[aux]04down(Alter, B).
;; 0
%child[aux]04:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 child(Alter, Ego).
;; 1
%child[aux]04:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), child(Alter, A).
;; 2
%child[aux]04:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), child(Alter, A).
;; 3
%child[aux]04:2, children:0, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), child(Alter, B).
;; 4
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(C, B), child(Alter, C).
;; 5
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D).
;; 6
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D).
;; 7
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), child(Alter, C).
;; 8
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D).
;; 9
%child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D).
;; 10
%child[aux]04:2, children:0, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B).
;; 11
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), child(Alter, C).
;; 12
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D).
;; 13
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D).
;; 14
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C).
;; 15
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D).
;; 16
%child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D).
;; 17
%child[aux]04:2, children:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B).
;; 18
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), child(Alter, C).
;; 19
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D).
;; 20
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D).
;; 21
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), child(Alter, C).
;; 22
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D).
;; 23
%child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D).
;; 24
%child[aux]04:2, children:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B).
;; 25
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), child(Alter, C).
;; 26
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D).
;; 27
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D).
;; 28
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C).
;; 29
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D).
;; 30
%child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D).


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


duwe(Alter, Ego) :-  sibling[aux]04(Alter, Ego), male(Alter), elder(Alter, Ego).
{"Bro_BroDaDaSo_BroDaSo_BroDaSoSo_BroSo_BroSoDaSo_BroSoSo_BroSoSoSo_FaBro_FaBroDaDaSo_FaBroDaSo_FaBroDaSoSo_FaBroSo_FaBroSoDaSo_FaBroSoSo_FaBroSoSoSo_FaSisDaDaSo_FaSisDaSo_FaSisDaSoSo_FaSisSo_FaSisSoDaSo_FaSisSoSo_FaSisSoSoSo_MoBro_MoBroDaDaSo_MoBroDaSo_MoBroDaSoSo_MoBroSo_MoBroSoDaSo_MoBroSoSo_MoBroSoSoSo_MoSisDaDaSo_MoSisDaSo_MoSisDaSoSo_MoSisSo_MoSisSoDaSo_MoSisSoSo_MoSisSoSoSo_SisDaDaSo_SisDaSo_SisDaSoSo_SisSo_SisSoDaSo_SisSoSo_SisSoSoSo"}
;; 0
%duwe:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%duwe:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 2
%duwe:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 3
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 4
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 5
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 6
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 7
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 8
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 9
%duwe:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 10
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 11
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 12
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 13
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 14
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 15
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 16
%duwe:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 17
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 18
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 19
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 20
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 21
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 22
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 23
%duwe:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 24
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 25
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 26
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 27
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 28
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 29
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 30
%duwe:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 31
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C), male(Alter), elder(Alter, Ego).
;; 32
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 33
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 34
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 35
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 36
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 37
%duwe:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 38
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C), male(Alter), elder(Alter, Ego).
;; 39
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 40
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 41
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 42
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 43
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 44
%duwe:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).


gagi_zhakka(Alter, Ego) :-  spice(A, Ego), jaku(Alter, A).
{"HuStmo_HuStmoFaFaMo_HuStmoFaMo_HuStmoFaMoMo_HuStmoMo_HuStmoMoFaMo_HuStmoMoMo_HuStmoMoMoMo_WiStmo_WiStmoFaFaMo_WiStmoFaMo_WiStmoFaMoMo_WiStmoMo_WiStmoMoFaMo_WiStmoMoMo_WiStmoMoMoMo"}
;; 0
%gagi_zhakka:0, spice:0, jaku:0, step_mother:0%
 Lvl=1,  PC=2, S=2, Star=0,  {HuStmo}  
 husband(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).
;; 1
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=2, Star=0,  {HuStmoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), parent(Alter, D), female(Alter).
;; 2
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {HuStmoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), parent(Alter, E), female(Alter).
;; 3
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStmoMoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), mother(F, E), parent(Alter, F), female(Alter).
;; 4
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStmoMoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), father(F, E), parent(Alter, F), female(Alter).
;; 5
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {HuStmoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), parent(Alter, E), female(Alter).
;; 6
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStmoFaMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), mother(F, E), parent(Alter, F), female(Alter).
;; 7
%gagi_zhakka:0, spice:0, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStmoFaFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), father(F, E), parent(Alter, F), female(Alter).
;; 8
%gagi_zhakka:0, spice:1, jaku:0, step_mother:0%
 Lvl=1,  PC=2, S=2, Star=0,  {WiStmo}  
 wife(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).
;; 9
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=2, Star=0,  {WiStmoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), parent(Alter, D), female(Alter).
;; 10
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {WiStmoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), parent(Alter, E), female(Alter).
;; 11
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStmoMoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), mother(F, E), parent(Alter, F), female(Alter).
;; 12
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStmoMoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), mother(E, D), father(F, E), parent(Alter, F), female(Alter).
;; 13
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {WiStmoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), parent(Alter, E), female(Alter).
;; 14
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStmoFaMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), mother(F, E), parent(Alter, F), female(Alter).
;; 15
%gagi_zhakka:0, spice:1, jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStmoFaFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), father(E, D), father(F, E), parent(Alter, F), female(Alter).


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


jaba(Alter, Ego) :-  parent[aux]04(Alter, Ego), female(Alter).
                 |   spice(A, Ego), parent[aux]04(Alter, A), female(Alter).
{"FaFaFaFaMo_FaFaFaMo_FaFaFaMoMo_FaFaMo_FaFaMoFaMo_FaFaMoMo_FaFaMoMoMo_FaMo_FaMoFaFaMo_FaMoFaMo_FaMoFaMoMo_FaMoMo_FaMoMoFaMo_FaMoMoMo_FaMoMoMoMo_HuFaFaFaFaMo_HuFaFaFaMo_HuFaFaFaMoMo_HuFaFaMo_HuFaFaMoFaMo_HuFaFaMoMo_HuFaFaMoMoMo_HuFaMo_HuFaMoFaFaMo_HuFaMoFaMo_HuFaMoFaMoMo_HuFaMoMo_HuFaMoMoFaMo_HuFaMoMoMo_HuFaMoMoMoMo_HuMo_HuMoFaFaFaMo_HuMoFaFaMo_HuMoFaFaMoMo_HuMoFaMo_HuMoFaMoFaMo_HuMoFaMoMo_HuMoFaMoMoMo_HuMoMo_HuMoMoFaFaMo_HuMoMoFaMo_HuMoMoFaMoMo_HuMoMoMo_HuMoMoMoFaMo_HuMoMoMoMo_HuMoMoMoMoMo_Mo_MoFaFaFaMo_MoFaFaMo_MoFaFaMoMo_MoFaMo_MoFaMoFaMo_MoFaMoMo_MoFaMoMoMo_MoMo_MoMoFaFaMo_MoMoFaMo_MoMoFaMoMo_MoMoMo_MoMoMoFaMo_MoMoMoMo_MoMoMoMoMo_WiFaFaFaFaMo_WiFaFaFaMo_WiFaFaFaMoMo_WiFaFaMo_WiFaFaMoFaMo_WiFaFaMoMo_WiFaFaMoMoMo_WiFaMo_WiFaMoFaFaMo_WiFaMoFaMo_WiFaMoFaMoMo_WiFaMoMo_WiFaMoMoFaMo_WiFaMoMoMo_WiFaMoMoMoMo_WiMo_WiMoFaFaFaMo_WiMoFaFaMo_WiMoFaFaMoMo_WiMoFaMo_WiMoFaMoFaMo_WiMoFaMoMo_WiMoFaMoMoMo_WiMoMo_WiMoMoFaFaMo_WiMoMoFaMo_WiMoMoFaMoMo_WiMoMoMo_WiMoMoMoFaMo_WiMoMoMoMo_WiMoMoMoMoMo"}
;; 0
%jaba:0, parent[aux]04:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 parent(Alter, Ego), female(Alter).
;; 1
%jaba:0, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 2
%jaba:0, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 3
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 4
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 5
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 6
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 7
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 8
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 9
%jaba:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 10
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 11
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 12
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 13
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 14
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 15
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 16
%jaba:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 17
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 18
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 19
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 20
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 21
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 22
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 23
%jaba:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 24
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 25
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 26
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 27
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 28
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 29
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 30
%jaba:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 31
%jaba:1, spice:0, parent[aux]04:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), parent(Alter, A), female(Alter).
;; 32
%jaba:1, spice:0, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 33
%jaba:1, spice:0, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 34
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 35
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 36
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 37
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 38
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 39
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 40
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 41
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 42
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 43
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 44
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 45
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 46
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 47
%jaba:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 48
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 49
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 50
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 51
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 52
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 53
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 54
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 55
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 56
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 57
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 58
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 59
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 60
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 61
%jaba:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 62
%jaba:1, spice:1, parent[aux]04:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), parent(Alter, A), female(Alter).
;; 63
%jaba:1, spice:1, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 64
%jaba:1, spice:1, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 65
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 66
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 67
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 68
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 69
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 70
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 71
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 72
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 73
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 74
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 75
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 76
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 77
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 78
%jaba:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 79
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 80
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 81
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 82
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 83
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 84
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 85
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 86
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 87
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 88
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 89
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 90
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 91
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 92
%jaba:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).


jaku(Alter, Ego) :-  step_mother(Alter, Ego).
                 |  [ext],  step_mother(A, Ego), lineal[aux]04up(Alter, A), female(Alter).
{"Stmo_StmoFaFaMo_StmoFaMo_StmoFaMoMo_StmoMo_StmoMoFaMo_StmoMoMo_StmoMoMoMo"}
;; 0
%jaku:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 1
%jaku:1, step_mother:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StmoMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), parent(Alter, C), female(Alter).
;; 2
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=1, Star=0,  {StmoMoMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), mother(D, C), parent(Alter, D), female(Alter).
;; 3
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StmoMoMoMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 4
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StmoMoFaMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 5
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=1, Star=0,  {StmoFaMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), father(D, C), parent(Alter, D), female(Alter).
;; 6
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StmoFaMoMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 7
%jaku:1, step_mother:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StmoFaFaMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), father(D, C), father(E, D), parent(Alter, E), female(Alter).


jasaldu(Alter, Ego) :-  nema(Alter, Ego).
;; 0
%jasaldu:0, nema:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), husband(A, Alter), not(equal(Ego, Alter)).


jasu(Alter, Ego) :-  male(Ego), sibling[aux]04(Alter, Ego), female(Alter), younger(Alter, Ego).
{"BroDa_BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_BroSoDaDa_BroSoSoDa_FaBroDa_FaBroDaDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDa_FaBroSoDaDa_FaBroSoSoDa_FaSis_FaSisDa_FaSisDaDa_FaSisDaDaDa_FaSisDaSoDa_FaSisSoDa_FaSisSoDaDa_FaSisSoSoDa_MoBroDa_MoBroDaDa_MoBroDaDaDa_MoBroDaSoDa_MoBroSoDa_MoBroSoDaDa_MoBroSoSoDa_MoSis_MoSisDa_MoSisDaDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDa_MoSisSoDaDa_MoSisSoSoDa_Sis_SisDa_SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa"}
;; 0
%jasu:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%jasu:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 2
%jasu:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 3
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 4
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 5
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 6
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 7
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 8
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 9
%jasu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 10
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 11
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 12
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 13
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 14
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 15
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 16
%jasu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 17
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 18
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 19
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 20
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 21
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 22
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 23
%jasu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 24
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 25
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 26
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 27
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 28
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 29
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 30
%jasu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 31
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C), female(Alter), younger(Alter, Ego).
;; 32
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 33
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 34
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 35
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 36
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 37
%jasu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 38
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C), female(Alter), younger(Alter, Ego).
;; 39
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 40
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 41
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 42
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 43
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 44
%jasu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).


jate(Alter, Ego) :-  parent[aux]04(Alter, Ego), male(Alter).
                 |   spice(A, Ego), parent[aux]04(Alter, A), male(Alter).
{"Fa_FaFa_FaFaFa_FaFaFaFa_FaFaFaFaFa_FaFaFaMoFa_FaFaMoFa_FaFaMoFaFa_FaFaMoMoFa_FaMoFa_FaMoFaFa_FaMoFaFaFa_FaMoFaMoFa_FaMoMoFa_FaMoMoFaFa_FaMoMoMoFa_HuFa_HuFaFa_HuFaFaFa_HuFaFaFaFa_HuFaFaFaFaFa_HuFaFaFaMoFa_HuFaFaMoFa_HuFaFaMoFaFa_HuFaFaMoMoFa_HuFaMoFa_HuFaMoFaFa_HuFaMoFaFaFa_HuFaMoFaMoFa_HuFaMoMoFa_HuFaMoMoFaFa_HuFaMoMoMoFa_HuMoFa_HuMoFaFa_HuMoFaFaFa_HuMoFaFaFaFa_HuMoFaFaMoFa_HuMoFaMoFa_HuMoFaMoFaFa_HuMoFaMoMoFa_HuMoMoFa_HuMoMoFaFa_HuMoMoFaFaFa_HuMoMoFaMoFa_HuMoMoMoFa_HuMoMoMoFaFa_HuMoMoMoMoFa_MoFa_MoFaFa_MoFaFaFa_MoFaFaFaFa_MoFaFaMoFa_MoFaMoFa_MoFaMoFaFa_MoFaMoMoFa_MoMoFa_MoMoFaFa_MoMoFaFaFa_MoMoFaMoFa_MoMoMoFa_MoMoMoFaFa_MoMoMoMoFa_WiFa_WiFaFa_WiFaFaFa_WiFaFaFaFa_WiFaFaFaFaFa_WiFaFaFaMoFa_WiFaFaMoFa_WiFaFaMoFaFa_WiFaFaMoMoFa_WiFaMoFa_WiFaMoFaFa_WiFaMoFaFaFa_WiFaMoFaMoFa_WiFaMoMoFa_WiFaMoMoFaFa_WiFaMoMoMoFa_WiMoFa_WiMoFaFa_WiMoFaFaFa_WiMoFaFaFaFa_WiMoFaFaMoFa_WiMoFaMoFa_WiMoFaMoFaFa_WiMoFaMoMoFa_WiMoMoFa_WiMoMoFaFa_WiMoMoFaFaFa_WiMoMoFaMoFa_WiMoMoMoFa_WiMoMoMoFaFa_WiMoMoMoMoFa"}
;; 0
%jate:0, parent[aux]04:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 parent(Alter, Ego), male(Alter).
;; 1
%jate:0, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 2
%jate:0, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 3
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 4
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 5
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 6
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 7
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 8
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 9
%jate:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 10
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 11
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 12
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 13
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 14
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 15
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 16
%jate:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 17
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 18
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 19
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 20
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 21
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 22
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 23
%jate:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 24
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 25
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 26
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 27
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 28
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 29
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 30
%jate:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 31
%jate:1, spice:0, parent[aux]04:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), parent(Alter, A), male(Alter).
;; 32
%jate:1, spice:0, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 33
%jate:1, spice:0, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 34
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 35
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 36
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 37
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 38
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 39
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 40
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 41
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 42
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 43
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 44
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 45
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 46
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 47
%jate:1, spice:0, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 48
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 49
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 50
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 51
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 52
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 53
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 54
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 55
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 56
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 57
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 58
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 59
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 60
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 61
%jate:1, spice:0, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 62
%jate:1, spice:1, parent[aux]04:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), parent(Alter, A), male(Alter).
;; 63
%jate:1, spice:1, parent[aux]04:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 64
%jate:1, spice:1, parent[aux]04:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 65
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 66
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 67
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 68
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 69
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 70
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 71
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 72
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 73
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 74
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 75
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 76
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 77
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 78
%jate:1, spice:1, parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 79
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 80
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 81
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 82
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 83
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 84
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 85
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 86
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 87
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 88
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 89
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 90
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 91
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 92
%jate:1, spice:1, parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).


jate_zhakka(Alter, Ego) :-  step_father(Alter, Ego).
                        |  [ext],  step_father(A, Ego), lineal[aux]04up(Alter, A), male(Alter).
{"Stfa_StfaFa_StfaFaFa_StfaFaFaFa_StfaFaMoFa_StfaMoFa_StfaMoFaFa_StfaMoMoFa"}
;; 0
%jate_zhakka:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).
;; 1
%jate_zhakka:1, step_father:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StfaFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), parent(Alter, C), male(Alter).
;; 2
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=1, Star=0,  {StfaMoFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), mother(D, C), parent(Alter, D), male(Alter).
;; 3
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StfaMoMoFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 4
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StfaMoFaFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 5
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=1, Star=0,  {StfaFaFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), father(D, C), parent(Alter, D), male(Alter).
;; 6
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StfaFaMoFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 7
%jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=1, Star=0,  {StfaFaFaFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), father(D, C), father(E, D), parent(Alter, E), male(Alter).


jualbi(Alter, Ego) :-  male(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), female(Alter).
                   |   male(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), female(Alter).
{"BroDaDaSoWi_BroDaSoSoWi_BroDaSoWi_BroSoDaSoWi_BroSoSoSoWi_BroSoSoWi_BroSoWi_BroWi_FaBroDaDaSoWi_FaBroDaSoSoWi_FaBroDaSoWi_FaBroSoDaSoWi_FaBroSoSoSoWi_FaBroSoSoWi_FaBroSoWi_FaBroWi_FaSisDaDaSoWi_FaSisDaSoSoWi_FaSisDaSoWi_FaSisSoDaSoWi_FaSisSoSoSoWi_FaSisSoSoWi_FaSisSoWi_MoBroDaDaSoWi_MoBroDaSoSoWi_MoBroDaSoWi_MoBroSoDaSoWi_MoBroSoSoSoWi_MoBroSoSoWi_MoBroSoWi_MoBroWi_MoSisDaDaSoWi_MoSisDaSoSoWi_MoSisDaSoWi_MoSisSoDaSoWi_MoSisSoSoSoWi_MoSisSoSoWi_MoSisSoWi_SisDaDaSoWi_SisDaSoSoWi_SisDaSoWi_SisSoDaSoWi_SisSoSoSoWi_SisSoSoWi_SisSoWi_WiBroDa_WiBroDaDa_WiBroDaDaDa_WiBroDaSoDa_WiBroSoDa_WiBroSoDaDa_WiBroSoSoDa_WiFaBroDa_WiFaBroDaDa_WiFaBroDaDaDa_WiFaBroDaSoDa_WiFaBroSoDa_WiFaBroSoDaDa_WiFaBroSoSoDa_WiFaSis_WiFaSisDa_WiFaSisDaDa_WiFaSisDaDaDa_WiFaSisDaSoDa_WiFaSisSoDa_WiFaSisSoDaDa_WiFaSisSoSoDa_WiMoBroDa_WiMoBroDaDa_WiMoBroDaDaDa_WiMoBroDaSoDa_WiMoBroSoDa_WiMoBroSoDaDa_WiMoBroSoSoDa_WiMoSis_WiMoSisDa_WiMoSisDaDa_WiMoSisDaDaDa_WiMoSisDaSoDa_WiMoSisSoDa_WiMoSisSoDaDa_WiMoSisSoSoDa_WiSis_WiSisDa_WiSisDaDa_WiSisDaDaDa_WiSisDaSoDa_WiSisSoDa_WiSisSoDaDa_WiSisSoSoDa"}
;; 0
%jualbi:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%jualbi:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%jualbi:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 4
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 5
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 6
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 8
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 9
%jualbi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 11
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 12
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 13
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 14
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 15
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 16
%jualbi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 18
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 19
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 20
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 21
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 22
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 23
%jualbi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 24
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 26
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 27
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 28
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 29
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 30
%jualbi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaDa}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 32
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter).
;; 33
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 34
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 35
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter).
;; 36
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 37
%jualbi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 38
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 39
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter).
;; 40
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 41
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 42
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter).
;; 43
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 44
%jualbi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaDa}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 45
%jualbi:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), female(Alter).
;; 46
%jualbi:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), female(Alter).
;; 47
%jualbi:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), female(Alter).
;; 48
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), female(Alter).
;; 49
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 50
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 51
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 52
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 53
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 54
%jualbi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 55
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), female(Alter).
;; 56
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 57
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 58
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 59
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 60
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 61
%jualbi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 62
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), female(Alter).
;; 63
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 64
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 65
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 66
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 67
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 68
%jualbi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 69
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), female(Alter).
;; 70
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 71
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 72
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 73
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 74
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 75
%jualbi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 76
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), female(Alter).
;; 77
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 78
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 79
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 80
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 81
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 82
%jualbi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 83
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), female(Alter).
;; 84
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 85
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 86
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 87
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 88
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 89
%jualbi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).


juazgui_zhakka(Alter, Ego) :-  spice(A, Ego), jate_zhakka(Alter, A).
{"HuStfa_HuStfaFa_HuStfaFaFa_HuStfaFaFaFa_HuStfaFaMoFa_HuStfaMoFa_HuStfaMoFaFa_HuStfaMoMoFa_WiStfa_WiStfaFa_WiStfaFaFa_WiStfaFaFaFa_WiStfaFaMoFa_WiStfaMoFa_WiStfaMoFaFa_WiStfaMoMoFa"}
;; 0
%juazgui_zhakka:0, spice:0, jate_zhakka:0, step_father:0%
 Lvl=1,  PC=2, S=2, Star=0,  {HuStfa}  
 husband(A, Ego), father(B, A), mother(C, A), husband(Alter, C), not(equal(Alter, B)).
;; 1
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=2, Star=0,  {HuStfaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), parent(Alter, D), male(Alter).
;; 2
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {HuStfaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), parent(Alter, E), male(Alter).
;; 3
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStfaMoMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), mother(F, E), parent(Alter, F), male(Alter).
;; 4
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStfaMoFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), father(F, E), parent(Alter, F), male(Alter).
;; 5
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {HuStfaFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), parent(Alter, E), male(Alter).
;; 6
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStfaFaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), mother(F, E), parent(Alter, F), male(Alter).
;; 7
%juazgui_zhakka:0, spice:0, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {HuStfaFaFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), father(F, E), parent(Alter, F), male(Alter).
;; 8
%juazgui_zhakka:0, spice:1, jate_zhakka:0, step_father:0%
 Lvl=1,  PC=2, S=2, Star=0,  {WiStfa}  
 wife(A, Ego), father(B, A), mother(C, A), husband(Alter, C), not(equal(Alter, B)).
;; 9
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:0%
 Lvl=2,  PC=3, S=2, Star=0,  {WiStfaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), parent(Alter, D), male(Alter).
;; 10
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {WiStfaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), parent(Alter, E), male(Alter).
;; 11
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStfaMoMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), mother(F, E), parent(Alter, F), male(Alter).
;; 12
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStfaMoFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), mother(E, D), father(F, E), parent(Alter, F), male(Alter).
;; 13
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=3,  PC=4, S=2, Star=0,  {WiStfaFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), parent(Alter, E), male(Alter).
;; 14
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStfaFaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), mother(F, E), parent(Alter, F), male(Alter).
;; 15
%juazgui_zhakka:0, spice:1, jate_zhakka:1, step_father:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=4,  PC=5, S=2, Star=0,  {WiStfaFaFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), father(E, D), father(F, E), parent(Alter, F), male(Alter).


juazi(Alter, Ego) :-  children(A, Ego), spouse(Alter, A).
                  |  [ext],  children(A, Ego), lineal[aux]04down(B, A), spice(Alter, B).
{"DaDaDaDaHu_DaDaDaHu_DaDaDaSoWi_DaDaHu_DaDaSoDaHu_DaDaSoSoWi_DaDaSoWi_DaHu_DaSoDaDaHu_DaSoDaHu_DaSoDaSoWi_DaSoSoDaHu_DaSoSoSoWi_DaSoSoWi_DaSoWi_SoDaDaDaHu_SoDaDaHu_SoDaDaSoWi_SoDaHu_SoDaSoDaHu_SoDaSoSoWi_SoDaSoWi_SoSoDaDaHu_SoSoDaHu_SoSoDaSoWi_SoSoSoDaHu_SoSoSoSoWi_SoSoSoWi_SoSoWi_SoWi"}
;; 0
%juazi:0, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), spouse(Alter, A).
;; 1
%juazi:0, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), spouse(Alter, A).
;; 2
%juazi:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
[ext],  son(A, Ego), child(B, A), husband(Alter, B).
;; 3
%juazi:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
[ext],  son(A, Ego), child(B, A), wife(Alter, B).
;; 4
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoSoDaHu}  
[ext],  son(A, Ego), son(B, A), child(C, B), husband(Alter, C).
;; 5
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoSoSoWi}  
[ext],  son(A, Ego), son(B, A), child(C, B), wife(Alter, C).
;; 6
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoSoDaHu}  
[ext],  son(A, Ego), son(B, A), son(C, B), child(D, C), husband(Alter, D).
;; 7
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoSoSoWi}  
[ext],  son(A, Ego), son(B, A), son(C, B), child(D, C), wife(Alter, D).
;; 8
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoDaDaHu}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), child(D, C), husband(Alter, D).
;; 9
%juazi:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoDaSoWi}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), child(D, C), wife(Alter, D).
;; 10
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoDaDaHu}  
[ext],  son(A, Ego), daughter(B, A), child(C, B), husband(Alter, C).
;; 11
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoDaSoWi}  
[ext],  son(A, Ego), daughter(B, A), child(C, B), wife(Alter, C).
;; 12
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaSoDaHu}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), child(D, C), husband(Alter, D).
;; 13
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaSoSoWi}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), child(D, C), wife(Alter, D).
;; 14
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaDaDaHu}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), child(D, C), husband(Alter, D).
;; 15
%juazi:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaDaSoWi}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), child(D, C), wife(Alter, D).
;; 16
%juazi:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
[ext],  daughter(A, Ego), child(B, A), husband(Alter, B).
;; 17
%juazi:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
[ext],  daughter(A, Ego), child(B, A), wife(Alter, B).
;; 18
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaSoDaHu}  
[ext],  daughter(A, Ego), son(B, A), child(C, B), husband(Alter, C).
;; 19
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaSoSoWi}  
[ext],  daughter(A, Ego), son(B, A), child(C, B), wife(Alter, C).
;; 20
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoSoDaHu}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), child(D, C), husband(Alter, D).
;; 21
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoSoSoWi}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), child(D, C), wife(Alter, D).
;; 22
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoDaDaHu}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), child(D, C), husband(Alter, D).
;; 23
%juazi:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoDaSoWi}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), child(D, C), wife(Alter, D).
;; 24
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaDaDaHu}  
[ext],  daughter(A, Ego), daughter(B, A), child(C, B), husband(Alter, C).
;; 25
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaDaSoWi}  
[ext],  daughter(A, Ego), daughter(B, A), child(C, B), wife(Alter, C).
;; 26
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaSoDaHu}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), child(D, C), husband(Alter, D).
;; 27
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaSoSoWi}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), child(D, C), wife(Alter, D).
;; 28
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaDaDaHu}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), child(D, C), husband(Alter, D).
;; 29
%juazi:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaDaSoWi}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), child(D, C), wife(Alter, D).


juazi_zhakka(Alter, Ego) :-  spice(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), children(Alter, C), child(Alter, B).
                         |   spice(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), children(D, C), child(D, B), lineal[aux]04down_gs(Alter, D).
{"HuStda_HuStdaDa_HuStdaDaDa_HuStdaDaDaDa_HuStdaDaDaSo_HuStdaDaSo_HuStdaDaSoDa_HuStdaDaSoSo_HuStdaSo_HuStdaSoDa_HuStdaSoDaDa_HuStdaSoDaSo_HuStdaSoSo_HuStdaSoSoDa_HuStdaSoSoSo_HuStso_HuStsoDa_HuStsoDaDa_HuStsoDaDaDa_HuStsoDaDaSo_HuStsoDaSo_HuStsoDaSoDa_HuStsoDaSoSo_HuStsoSo_HuStsoSoDa_HuStsoSoDaDa_HuStsoSoDaSo_HuStsoSoSo_HuStsoSoSoDa_HuStsoSoSoSo_WiStda_WiStdaDa_WiStdaDaDa_WiStdaDaDaDa_WiStdaDaDaSo_WiStdaDaSo_WiStdaDaSoDa_WiStdaDaSoSo_WiStdaSo_WiStdaSoDa_WiStdaSoDaDa_WiStdaSoDaSo_WiStdaSoSo_WiStdaSoSoDa_WiStdaSoSoSo_WiStso_WiStsoDa_WiStsoDaDa_WiStsoDaDaDa_WiStsoDaDaSo_WiStsoDaSo_WiStsoDaSoDa_WiStsoDaSoSo_WiStsoSo_WiStsoSoDa_WiStsoSoDaDa_WiStsoSoDaSo_WiStsoSoSo_WiStsoSoSoDa_WiStsoSoSoSo"}
;; 0
%juazi_zhakka:0, spice:0, children:0%
 Lvl=-1,  PC=2, S=3, Star=0,  {HuStso}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(Alter, C), child(Alter, B).
;; 1
%juazi_zhakka:0, spice:0, children:1%
 Lvl=-1,  PC=2, S=3, Star=0,  {HuStda}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(Alter, C), child(Alter, B).
;; 2
%juazi_zhakka:0, spice:1, children:0%
 Lvl=-1,  PC=2, S=3, Star=0,  {WiStso}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(Alter, C), child(Alter, B).
;; 3
%juazi_zhakka:0, spice:1, children:1%
 Lvl=-1,  PC=2, S=3, Star=0,  {WiStda}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(Alter, C), child(Alter, B).
;; 4
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-2,  PC=3, S=3, Star=0,  {HuStsoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(Alter, D).
;; 5
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-2,  PC=3, S=3, Star=0,  {HuStsoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(Alter, D).
;; 6
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStsoSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(Alter, E).
;; 7
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStsoSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(Alter, E).
;; 8
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoSoSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(F, E), son(Alter, F).
;; 9
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoSoSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(F, E), daughter(Alter, F).
;; 10
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoSoDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(F, E), son(Alter, F).
;; 11
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoSoDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(F, E), daughter(Alter, F).
;; 12
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStsoDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(Alter, E).
;; 13
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStsoDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(Alter, E).
;; 14
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoDaSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(F, E), son(Alter, F).
;; 15
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoDaSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(F, E), daughter(Alter, F).
;; 16
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoDaDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(F, E), son(Alter, F).
;; 17
%juazi_zhakka:1, spice:0, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStsoDaDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 18
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-2,  PC=3, S=3, Star=0,  {HuStdaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(Alter, D).
;; 19
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-2,  PC=3, S=3, Star=0,  {HuStdaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(Alter, D).
;; 20
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStdaSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(Alter, E).
;; 21
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStdaSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(Alter, E).
;; 22
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaSoSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(F, E), son(Alter, F).
;; 23
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaSoSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(F, E), daughter(Alter, F).
;; 24
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaSoDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(F, E), son(Alter, F).
;; 25
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaSoDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(F, E), daughter(Alter, F).
;; 26
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStdaDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(Alter, E).
;; 27
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {HuStdaDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(Alter, E).
;; 28
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaDaSoSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(F, E), son(Alter, F).
;; 29
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaDaSoDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(F, E), daughter(Alter, F).
;; 30
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaDaDaSo}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(F, E), son(Alter, F).
;; 31
%juazi_zhakka:1, spice:0, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {HuStdaDaDaDa}  
 husband(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-2,  PC=3, S=3, Star=0,  {WiStsoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(Alter, D).
;; 33
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-2,  PC=3, S=3, Star=0,  {WiStsoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(Alter, D).
;; 34
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStsoSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(Alter, E).
;; 35
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStsoSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(Alter, E).
;; 36
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoSoSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(F, E), son(Alter, F).
;; 37
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoSoSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), son(F, E), daughter(Alter, F).
;; 38
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoSoDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(F, E), son(Alter, F).
;; 39
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoSoDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), son(E, D), daughter(F, E), daughter(Alter, F).
;; 40
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStsoDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(Alter, E).
;; 41
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStsoDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(Alter, E).
;; 42
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoDaSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(F, E), son(Alter, F).
;; 43
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoDaSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), son(F, E), daughter(Alter, F).
;; 44
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoDaDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(F, E), son(Alter, F).
;; 45
%juazi_zhakka:1, spice:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStsoDaDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), son(D, C), child(D, B), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 46
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-2,  PC=3, S=3, Star=0,  {WiStdaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(Alter, D).
;; 47
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-2,  PC=3, S=3, Star=0,  {WiStdaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(Alter, D).
;; 48
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStdaSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(Alter, E).
;; 49
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStdaSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(Alter, E).
;; 50
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaSoSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(F, E), son(Alter, F).
;; 51
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaSoSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), son(F, E), daughter(Alter, F).
;; 52
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaSoDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(F, E), son(Alter, F).
;; 53
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaSoDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), son(E, D), daughter(F, E), daughter(Alter, F).
;; 54
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStdaDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(Alter, E).
;; 55
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-3,  PC=4, S=3, Star=0,  {WiStdaDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(Alter, E).
;; 56
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaDaSoSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(F, E), son(Alter, F).
;; 57
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaDaSoDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), son(F, E), daughter(Alter, F).
;; 58
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaDaDaSo}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(F, E), son(Alter, F).
;; 59
%juazi_zhakka:1, spice:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=-4,  PC=5, S=3, Star=0,  {WiStdaDaDaDa}  
 wife(A, Ego), spouse(B, A), spouse(C, B), not(equal(A, C)), not(equal(Ego, B)), daughter(D, C), child(D, B), daughter(E, D), daughter(F, E), daughter(Alter, F).


lineal[aux]04down(Alter, Ego) :-  child(Alter, Ego).
                              |   children(A, Ego), lineal[aux]04down(Alter, A).
;; 0
%lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 child(Alter, Ego).
;; 1
%lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), child(Alter, A).
;; 2
%lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(B, A), child(Alter, B).
;; 3
%lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(B, A), child(Alter, B).
;; 4
%lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), child(Alter, A).
;; 5
%lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(B, A), child(Alter, B).
;; 6
%lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(B, A), child(Alter, B).


lineal[aux]04down_gs(Alter, Ego) :-  children(Alter, Ego).
                                 |   children(A, Ego), lineal[aux]04down_gs(Alter, A).
;; 0
%lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 2
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 3
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 4
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 5
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 8
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 9
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).
;; 10
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 11
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:0, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 12
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 13
%lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:1, children:1, lineal[aux]04down_gs:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).


lineal[aux]04up(Alter, Ego) :-  parent(Alter, Ego).
                            |   parents(A, Ego), lineal[aux]04up(Alter, A).
;; 0
%lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 1
%lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 2
%lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 3
%lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 4
%lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 5
%lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 6
%lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), parent(Alter, B).


maushi(Alter, Ego) :-  spice(A, Ego), sibling[aux]04(B, A), spice(Alter, B).
{"HuBroDaDaDaHu_HuBroDaDaHu_HuBroDaDaSoWi_HuBroDaHu_HuBroDaSoDaHu_HuBroDaSoSoWi_HuBroDaSoWi_HuBroSoDaDaHu_HuBroSoDaHu_HuBroSoDaSoWi_HuBroSoSoDaHu_HuBroSoSoSoWi_HuBroSoSoWi_HuBroSoWi_HuBroWi_HuFaBroDaDaDaHu_HuFaBroDaDaHu_HuFaBroDaDaSoWi_HuFaBroDaHu_HuFaBroDaSoDaHu_HuFaBroDaSoSoWi_HuFaBroDaSoWi_HuFaBroSoDaDaHu_HuFaBroSoDaHu_HuFaBroSoDaSoWi_HuFaBroSoSoDaHu_HuFaBroSoSoSoWi_HuFaBroSoSoWi_HuFaBroSoWi_HuFaBroWi_HuFaSisDaDaDaHu_HuFaSisDaDaHu_HuFaSisDaDaSoWi_HuFaSisDaHu_HuFaSisDaSoDaHu_HuFaSisDaSoSoWi_HuFaSisDaSoWi_HuFaSisHu_HuFaSisSoDaDaHu_HuFaSisSoDaHu_HuFaSisSoDaSoWi_HuFaSisSoSoDaHu_HuFaSisSoSoSoWi_HuFaSisSoSoWi_HuFaSisSoWi_HuMoBroDaDaDaHu_HuMoBroDaDaHu_HuMoBroDaDaSoWi_HuMoBroDaHu_HuMoBroDaSoDaHu_HuMoBroDaSoSoWi_HuMoBroDaSoWi_HuMoBroSoDaDaHu_HuMoBroSoDaHu_HuMoBroSoDaSoWi_HuMoBroSoSoDaHu_HuMoBroSoSoSoWi_HuMoBroSoSoWi_HuMoBroSoWi_HuMoBroWi_HuMoSisDaDaDaHu_HuMoSisDaDaHu_HuMoSisDaDaSoWi_HuMoSisDaHu_HuMoSisDaSoDaHu_HuMoSisDaSoSoWi_HuMoSisDaSoWi_HuMoSisHu_HuMoSisSoDaDaHu_HuMoSisSoDaHu_HuMoSisSoDaSoWi_HuMoSisSoSoDaHu_HuMoSisSoSoSoWi_HuMoSisSoSoWi_HuMoSisSoWi_HuSisDaDaDaHu_HuSisDaDaHu_HuSisDaDaSoWi_HuSisDaHu_HuSisDaSoDaHu_HuSisDaSoSoWi_HuSisDaSoWi_HuSisHu_HuSisSoDaDaHu_HuSisSoDaHu_HuSisSoDaSoWi_HuSisSoSoDaHu_HuSisSoSoSoWi_HuSisSoSoWi_HuSisSoWi_WiBroDaDaDaHu_WiBroDaDaHu_WiBroDaDaSoWi_WiBroDaHu_WiBroDaSoDaHu_WiBroDaSoSoWi_WiBroDaSoWi_WiBroSoDaDaHu_WiBroSoDaHu_WiBroSoDaSoWi_WiBroSoSoDaHu_WiBroSoSoSoWi_WiBroSoSoWi_WiBroSoWi_WiBroWi_WiFaBroDaDaDaHu_WiFaBroDaDaHu_WiFaBroDaDaSoWi_WiFaBroDaHu_WiFaBroDaSoDaHu_WiFaBroDaSoSoWi_WiFaBroDaSoWi_WiFaBroSoDaDaHu_WiFaBroSoDaHu_WiFaBroSoDaSoWi_WiFaBroSoSoDaHu_WiFaBroSoSoSoWi_WiFaBroSoSoWi_WiFaBroSoWi_WiFaBroWi_WiFaSisDaDaDaHu_WiFaSisDaDaHu_WiFaSisDaDaSoWi_WiFaSisDaHu_WiFaSisDaSoDaHu_WiFaSisDaSoSoWi_WiFaSisDaSoWi_WiFaSisHu_WiFaSisSoDaDaHu_WiFaSisSoDaHu_WiFaSisSoDaSoWi_WiFaSisSoSoDaHu_WiFaSisSoSoSoWi_WiFaSisSoSoWi_WiFaSisSoWi_WiMoBroDaDaDaHu_WiMoBroDaDaHu_WiMoBroDaDaSoWi_WiMoBroDaHu_WiMoBroDaSoDaHu_WiMoBroDaSoSoWi_WiMoBroDaSoWi_WiMoBroSoDaDaHu_WiMoBroSoDaHu_WiMoBroSoDaSoWi_WiMoBroSoSoDaHu_WiMoBroSoSoSoWi_WiMoBroSoSoWi_WiMoBroSoWi_WiMoBroWi_WiMoSisDaDaDaHu_WiMoSisDaDaHu_WiMoSisDaDaSoWi_WiMoSisDaHu_WiMoSisDaSoDaHu_WiMoSisDaSoSoWi_WiMoSisDaSoWi_WiMoSisHu_WiMoSisSoDaDaHu_WiMoSisSoDaHu_WiMoSisSoDaSoWi_WiMoSisSoSoDaHu_WiMoSisSoSoSoWi_WiMoSisSoSoWi_WiMoSisSoWi_WiSisDaDaDaHu_WiSisDaDaHu_WiSisDaDaSoWi_WiSisDaHu_WiSisDaSoDaHu_WiSisDaSoSoWi_WiSisDaSoWi_WiSisHu_WiSisSoDaDaHu_WiSisSoDaHu_WiSisSoDaSoWi_WiSisSoSoDaHu_WiSisSoSoSoWi_WiSisSoSoWi_WiSisSoWi"}
;; 0
%maushi:0, spice:0, sibling[aux]04:0, sibling:0, spice:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), husband(Alter, D).
;; 1
%maushi:0, spice:0, sibling[aux]04:0, sibling:0, spice:1%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 2
%maushi:0, spice:0, sibling[aux]04:1, parents:0, sibling:0, spice:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoSisHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), husband(Alter, E).
;; 3
%maushi:0, spice:0, sibling[aux]04:1, parents:0, sibling:0, spice:1%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoBroWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), wife(Alter, E).
;; 4
%maushi:0, spice:0, sibling[aux]04:1, parents:1, sibling:0, spice:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaSisHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), husband(Alter, E).
;; 5
%maushi:0, spice:0, sibling[aux]04:1, parents:1, sibling:0, spice:1%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaBroWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), wife(Alter, E).
;; 6
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 7
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 8
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 9
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 10
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 11
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 12
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 13
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroSoDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 14
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 15
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoBroDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 16
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroDaSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 17
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroDaSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 18
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroDaDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 19
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoBroDaDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 20
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 21
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 22
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoSisSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 23
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoSisSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 24
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisSoSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 25
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisSoSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 26
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisSoDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 27
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisSoDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 28
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoSisDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 29
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 30
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisDaSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 31
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisDaSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 32
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisDaDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 33
%maushi:0, spice:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuMoSisDaDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 34
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 35
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 36
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaBroSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 37
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaBroSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 38
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroSoSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 39
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroSoSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 40
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroSoDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 41
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroSoDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 42
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 43
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaBroDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 44
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroDaSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 45
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroDaSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 46
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroDaDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 47
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaBroDaDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 48
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 49
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 50
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 51
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaSisSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 52
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisSoSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 53
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisSoSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 54
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisSoDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 55
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisSoDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 56
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaSisDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 57
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {HuFaSisDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 58
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisDaSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 59
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisDaSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 60
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisDaDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 61
%maushi:0, spice:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {HuFaSisDaDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 62
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 63
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 64
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuBroSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), husband(Alter, F).
;; 65
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuBroSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), wife(Alter, F).
;; 66
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroSoSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 67
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroSoSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 68
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroSoDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 69
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroSoDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 70
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), husband(Alter, F).
;; 71
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuBroDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), wife(Alter, F).
;; 72
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroDaSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 73
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroDaSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 74
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroDaDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 75
%maushi:0, spice:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuBroDaDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 76
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), husband(Alter, E).
;; 77
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), wife(Alter, E).
;; 78
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuSisSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), husband(Alter, F).
;; 79
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuSisSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), wife(Alter, F).
;; 80
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisSoSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 81
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisSoSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 82
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisSoDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 83
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisSoDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 84
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuSisDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), husband(Alter, F).
;; 85
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {HuSisDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), wife(Alter, F).
;; 86
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisDaSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 87
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisDaSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 88
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisDaDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 89
%maushi:0, spice:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {HuSisDaDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 90
%maushi:0, spice:1, sibling[aux]04:0, sibling:0, spice:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), husband(Alter, D).
;; 91
%maushi:0, spice:1, sibling[aux]04:0, sibling:0, spice:1%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 92
%maushi:0, spice:1, sibling[aux]04:1, parents:0, sibling:0, spice:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoSisHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), husband(Alter, E).
;; 93
%maushi:0, spice:1, sibling[aux]04:1, parents:0, sibling:0, spice:1%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoBroWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), wife(Alter, E).
;; 94
%maushi:0, spice:1, sibling[aux]04:1, parents:1, sibling:0, spice:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaSisHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), husband(Alter, E).
;; 95
%maushi:0, spice:1, sibling[aux]04:1, parents:1, sibling:0, spice:1%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaBroWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), wife(Alter, E).
;; 96
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 97
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 98
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoBroSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 99
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoBroSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 100
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroSoSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 101
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroSoSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 102
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroSoDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 103
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroSoDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 104
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoBroDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 105
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoBroDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 106
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroDaSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 107
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroDaSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 108
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroDaDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 109
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoBroDaDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 110
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 111
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 112
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoSisSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 113
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoSisSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 114
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisSoSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 115
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisSoSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 116
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisSoDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 117
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisSoDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 118
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoSisDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 119
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiMoSisDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 120
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisDaSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 121
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisDaSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 122
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisDaDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 123
%maushi:0, spice:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiMoSisDaDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 124
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), husband(Alter, F).
;; 125
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 126
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaBroSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), husband(Alter, G).
;; 127
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaBroSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), wife(Alter, G).
;; 128
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroSoSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 129
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroSoSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 130
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroSoDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 131
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroSoDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 132
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaBroDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 133
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaBroDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 134
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroDaSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 135
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroDaSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 136
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroDaDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 137
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaBroDaDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 138
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), husband(Alter, F).
;; 139
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 140
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaSisSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), husband(Alter, G).
;; 141
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaSisSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), wife(Alter, G).
;; 142
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisSoSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 143
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisSoSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 144
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisSoDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 145
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisSoDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 146
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaSisDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), husband(Alter, G).
;; 147
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {WiFaSisDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), wife(Alter, G).
;; 148
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisDaSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), husband(Alter, H).
;; 149
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisDaSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(H, G), wife(Alter, H).
;; 150
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisDaDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), husband(Alter, H).
;; 151
%maushi:0, spice:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=8, S=2, Star=0,  {WiFaSisDaDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(H, G), wife(Alter, H).
;; 152
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiBroDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 153
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiBroSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 154
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiBroSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), husband(Alter, F).
;; 155
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiBroSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), wife(Alter, F).
;; 156
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroSoSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 157
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroSoSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 158
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroSoDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 159
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroSoDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 160
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiBroDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), husband(Alter, F).
;; 161
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiBroDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), wife(Alter, F).
;; 162
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroDaSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 163
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroDaSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 164
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroDaDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 165
%maushi:0, spice:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiBroDaDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 166
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), husband(Alter, E).
;; 167
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0, spice:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), wife(Alter, E).
;; 168
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiSisSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), husband(Alter, F).
;; 169
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiSisSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), wife(Alter, F).
;; 170
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisSoSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 171
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisSoSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 172
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisSoDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 173
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisSoDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), wife(Alter, G).
;; 174
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiSisDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), husband(Alter, F).
;; 175
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-2,  PC=6, S=2, Star=0,  {WiSisDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), wife(Alter, F).
;; 176
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisDaSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), husband(Alter, G).
;; 177
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisDaSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), wife(Alter, G).
;; 178
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:0%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisDaDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), husband(Alter, G).
;; 179
%maushi:0, spice:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0, spice:1%
 Lvl=-3,  PC=7, S=2, Star=0,  {WiSisDaDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), wife(Alter, G).


munzhi(Alter, Ego) :-  child[aux]04(Alter, Ego), female(Alter).
                   |   step_daughter(Alter, Ego).
                   |   step_son(A, Ego), daughter(Alter, A).
                   |   step_daughter(A, Ego), daughter(Alter, A).
                   |  [ext],  step_son(A, Ego), children(B, A), lineal[aux]04down(Alter, B), female(Alter).
                   |  [ext],  step_daughter(A, Ego), children(B, A), lineal[aux]04down(Alter, B), female(Alter).
{"Da_DaDa_DaDaDa_DaDaDaDa_DaDaDaDaDa_DaDaDaSoDa_DaDaSoDa_DaDaSoDaDa_DaDaSoSoDa_DaSoDa_DaSoDaDa_DaSoDaDaDa_DaSoDaSoDa_DaSoSoDa_DaSoSoDaDa_DaSoSoSoDa_SoDa_SoDaDa_SoDaDaDa_SoDaDaDaDa_SoDaDaSoDa_SoDaSoDa_SoDaSoDaDa_SoDaSoSoDa_SoSoDa_SoSoDaDa_SoSoDaDaDa_SoSoDaSoDa_SoSoSoDa_SoSoSoDaDa_SoSoSoSoDa_Stda_StdaDa_StdaDaDa_StdaDaDaDa_StdaDaDaDaDa_StdaDaDaSoDa_StdaDaSoDa_StdaDaSoDaDa_StdaDaSoSoDa_StdaSoDa_StdaSoDaDa_StdaSoDaDaDa_StdaSoDaSoDa_StdaSoSoDa_StdaSoSoDaDa_StdaSoSoSoDa_StsoDa_StsoDaDa_StsoDaDaDa_StsoDaDaDaDa_StsoDaDaSoDa_StsoDaSoDa_StsoDaSoDaDa_StsoDaSoSoDa_StsoSoDa_StsoSoDaDa_StsoSoDaDaDa_StsoSoDaSoDa_StsoSoSoDa_StsoSoSoDaDa_StsoSoSoSoDa"}
;; 0
%munzhi:0, child[aux]04:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 child(Alter, Ego), female(Alter).
;; 1
%munzhi:0, child[aux]04:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), child(Alter, A), female(Alter).
;; 2
%munzhi:0, child[aux]04:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), child(Alter, A), female(Alter).
;; 3
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  son(A, Ego), son(B, A), child(Alter, B), female(Alter).
;; 4
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext],  son(A, Ego), son(B, A), son(C, B), child(Alter, C), female(Alter).
;; 5
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
[ext],  son(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D), female(Alter).
;; 6
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
[ext],  son(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 7
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), child(Alter, C), female(Alter).
;; 8
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D), female(Alter).
;; 9
%munzhi:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 10
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B), female(Alter).
;; 11
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), child(Alter, C), female(Alter).
;; 12
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D), female(Alter).
;; 13
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 14
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C), female(Alter).
;; 15
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D), female(Alter).
;; 16
%munzhi:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 17
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B), female(Alter).
;; 18
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), child(Alter, C), female(Alter).
;; 19
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D), female(Alter).
;; 20
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 21
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), child(Alter, C), female(Alter).
;; 22
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D), female(Alter).
;; 23
%munzhi:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 24
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B), female(Alter).
;; 25
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), child(Alter, C), female(Alter).
;; 26
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D), female(Alter).
;; 27
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 28
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C), female(Alter).
;; 29
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D), female(Alter).
;; 30
%munzhi:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D), female(Alter).
;; 31
%munzhi:1, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 32
%munzhi:2, step_son:0%
 Lvl=-2,  PC=3, S=2, Star=0,  {StsoDa}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(Alter, C).
;; 33
%munzhi:3, step_daughter:0%
 Lvl=-2,  PC=3, S=2, Star=0,  {StdaDa}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(Alter, C).
;; 34
%munzhi:4, step_son:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StsoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), child(Alter, D), female(Alter).
;; 35
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), child(Alter, E), female(Alter).
;; 36
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 37
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 38
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), child(Alter, E), female(Alter).
;; 39
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 40
%munzhi:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 41
%munzhi:4, step_son:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StsoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), child(Alter, D), female(Alter).
;; 42
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), child(Alter, E), female(Alter).
;; 43
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 44
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 45
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter).
;; 46
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 47
%munzhi:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 48
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StdaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), child(Alter, D), female(Alter).
;; 49
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), child(Alter, E), female(Alter).
;; 50
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 51
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 52
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), child(Alter, E), female(Alter).
;; 53
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 54
%munzhi:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 55
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StdaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), child(Alter, D), female(Alter).
;; 56
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), child(Alter, E), female(Alter).
;; 57
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaSoSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 58
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaSoDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 59
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter).
;; 60
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaDaSoDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 61
%munzhi:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaDaDaDa}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).


nani(Alter, Ego) :-  sibling[aux]04(Alter, Ego), male(Alter), younger(Alter, Ego).
                 |   female(Ego), sibling[aux]04(Alter, Ego), female(Alter), younger(Alter, Ego).
{"Bro_BroDa_BroDaDa_BroDaDaDa_BroDaDaSo_BroDaSo_BroDaSoDa_BroDaSoSo_BroSo_BroSoDa_BroSoDaDa_BroSoDaSo_BroSoSo_BroSoSoDa_BroSoSoSo_FaBro_FaBroDa_FaBroDaDa_FaBroDaDaDa_FaBroDaDaSo_FaBroDaSo_FaBroDaSoDa_FaBroDaSoSo_FaBroSo_FaBroSoDa_FaBroSoDaDa_FaBroSoDaSo_FaBroSoSo_FaBroSoSoDa_FaBroSoSoSo_FaSis_FaSisDa_FaSisDaDa_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSo_FaSisSoDa_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSo_FaSisSoSoDa_FaSisSoSoSo_MoBro_MoBroDa_MoBroDaDa_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSo_MoBroSoDa_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSo_MoBroSoSoDa_MoBroSoSoSo_MoSis_MoSisDa_MoSisDaDa_MoSisDaDaDa_MoSisDaDaSo_MoSisDaSo_MoSisDaSoDa_MoSisDaSoSo_MoSisSo_MoSisSoDa_MoSisSoDaDa_MoSisSoDaSo_MoSisSoSo_MoSisSoSoDa_MoSisSoSoSo_Sis_SisDa_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo"}
;; 0
%nani:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%nani:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 2
%nani:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 3
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 4
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 5
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 6
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 7
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 8
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 9
%nani:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 10
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 11
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 12
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 13
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 14
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 15
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 16
%nani:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 17
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 18
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 19
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 20
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 21
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 22
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 23
%nani:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 24
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 25
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 26
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 27
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 28
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 29
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 30
%nani:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 31
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C), male(Alter), younger(Alter, Ego).
;; 32
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 33
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 34
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 35
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 36
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 37
%nani:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 38
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C), male(Alter), younger(Alter, Ego).
;; 39
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 40
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 41
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 42
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 43
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 44
%nani:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 45
%nani:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 46
%nani:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 47
%nani:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, Ego).
;; 48
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 49
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 50
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 51
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 52
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 53
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 54
%nani:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 55
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 56
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 57
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 58
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 59
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 60
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 61
%nani:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 62
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 63
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 64
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 65
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 66
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 67
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 68
%nani:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 69
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 70
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 71
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 72
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 73
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 74
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 75
%nani:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 76
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C), female(Alter), younger(Alter, Ego).
;; 77
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 78
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 79
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 80
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 81
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 82
%nani:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 83
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C), female(Alter), younger(Alter, Ego).
;; 84
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 85
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 86
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 87
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 88
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 89
%nani:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), younger(Alter, Ego).


nauwa[aux]04(Alter, Ego) :-  parents(A, Ego), parents(B, A), siblings(C, B), lineal[aux]04down(Alter, C).
                         |   parents(A, Ego), parents(B, A), parents(C, B), siblings(D, C), lineal[aux]04down(Alter, D).
;; 0
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 1
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 2
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G).
;; 3
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G).
;; 4
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G).
;; 6
%nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 7
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 8
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 9
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G).
;; 10
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G).
;; 11
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 12
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G).
;; 13
%nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 14
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 15
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 16
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G).
;; 17
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G).
;; 18
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G).
;; 20
%nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 21
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 22
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 23
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G).
;; 24
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G).
;; 25
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 26
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G).
;; 27
%nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 28
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 29
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 30
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G).
;; 31
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G).
;; 32
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 33
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G).
;; 34
%nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 35
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 36
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 37
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G).
;; 38
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G).
;; 39
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 40
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G).
;; 41
%nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 42
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 43
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 44
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G).
;; 45
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G).
;; 46
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G).
;; 48
%nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 49
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 50
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 51
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G).
;; 52
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G).
;; 53
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 54
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G).
;; 55
%nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G).
;; 56
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 57
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 58
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 59
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 60
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 61
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 62
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 63
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 64
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 65
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 66
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 67
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 68
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 69
%nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 70
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 71
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 72
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 73
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 74
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 75
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 78
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 79
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 80
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 81
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 82
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 83
%nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 84
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 85
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 86
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 87
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 88
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 89
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 90
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 91
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 92
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 93
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 94
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 95
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 96
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 97
%nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 98
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 99
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 100
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 101
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 102
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 103
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 104
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 105
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 106
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 107
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 108
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 109
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 110
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 111
%nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 112
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 113
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 114
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 115
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 116
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 117
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 118
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 119
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 120
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 121
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 122
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 123
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 124
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 125
%nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 126
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 127
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 128
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 129
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 130
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 131
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 132
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 133
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 134
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 135
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 136
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 137
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 138
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 139
%nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 140
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 141
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 142
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 143
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 144
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 145
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 146
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 147
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 148
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 149
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 150
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 151
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 152
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 153
%nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 154
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 155
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 156
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 157
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 158
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 159
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 160
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 161
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 162
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 163
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 164
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 165
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 166
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 167
%nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


nauwa_duwe(Alter, Ego) :-  nauwa[aux]04(Alter, Ego), male(Alter), elder(Alter, Ego).
{"FaFaBroDaDaSo_FaFaBroDaSo_FaFaBroDaSoSo_FaFaBroSo_FaFaBroSoDaSo_FaFaBroSoSo_FaFaBroSoSoSo_FaFaFaBroDaSo_FaFaFaBroSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSo_FaFaMoSisSoSo_FaFaSisDaDaSo_FaFaSisDaSo_FaFaSisDaSoSo_FaFaSisSo_FaFaSisSoDaSo_FaFaSisSoSo_FaFaSisSoSoSo_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroDaSoSo_FaMoBroSo_FaMoBroSoDaSo_FaMoBroSoSo_FaMoBroSoSoSo_FaMoFaBroDaSo_FaMoFaBroSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSo_FaMoMoSisSoSo_FaMoSisDaDaSo_FaMoSisDaSo_FaMoSisDaSoSo_FaMoSisSo_FaMoSisSoDaSo_FaMoSisSoSo_FaMoSisSoSoSo_MoFaBroDaDaSo_MoFaBroDaSo_MoFaBroDaSoSo_MoFaBroSo_MoFaBroSoDaSo_MoFaBroSoSo_MoFaBroSoSoSo_MoFaFaBroDaSo_MoFaFaBroSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSo_MoFaMoSisSoSo_MoFaSisDaDaSo_MoFaSisDaSo_MoFaSisDaSoSo_MoFaSisSo_MoFaSisSoDaSo_MoFaSisSoSo_MoFaSisSoSoSo_MoMoBroDaDaSo_MoMoBroDaSo_MoMoBroDaSoSo_MoMoBroSo_MoMoBroSoDaSo_MoMoBroSoSo_MoMoBroSoSoSo_MoMoFaBroDaSo_MoMoFaBroSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSo_MoMoMoSisSoSo_MoMoSisDaDaSo_MoMoSisDaSo_MoMoSisDaSoSo_MoMoSisSo_MoMoSisSoDaSo_MoMoSisSoSo_MoMoSisSoSoSo"}
;; 0
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 1
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 2
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 3
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 4
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 5
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 6
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 7
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 8
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 9
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 10
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 11
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 12
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 13
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 14
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 15
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 16
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 17
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 18
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 19
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 20
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 21
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 22
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 23
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 24
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 25
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 26
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 27
%nauwa_duwe:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 28
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 29
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 30
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 31
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 32
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 33
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 34
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 35
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 36
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 37
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 38
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 39
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 40
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 41
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 42
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 43
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 44
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 45
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 46
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 47
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 48
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 49
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 50
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 51
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 52
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 53
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 54
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 55
%nauwa_duwe:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 56
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 57
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 58
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 59
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 60
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 61
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 62
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 63
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 64
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 65
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 66
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 67
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 68
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 69
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 70
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 71
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 72
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 73
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 74
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 75
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 76
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 77
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 78
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 79
%nauwa_duwe:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 80
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 81
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 82
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 83
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 84
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 85
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 86
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 87
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 88
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 89
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 90
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 91
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 92
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 93
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 94
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 95
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 96
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 97
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 98
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 99
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 100
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 101
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 102
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 103
%nauwa_duwe:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).


nauwa_jasu(Alter, Ego) :-  male(Ego), nauwa[aux]04(Alter, Ego), female(Alter), younger(Alter, Ego).
{"FaFaBroDa_FaFaBroDaDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaFaBroDa_FaFaFaBroDaDa_FaFaFaBroDaDaDa_FaFaFaBroDaSoDa_FaFaFaBroSoDa_FaFaFaBroSoDaDa_FaFaFaBroSoSoDa_FaFaFaSisDa_FaFaFaSisDaDa_FaFaFaSisDaDaDa_FaFaFaSisDaSoDa_FaFaFaSisSoDa_FaFaFaSisSoDaDa_FaFaFaSisSoSoDa_FaFaMoBroDa_FaFaMoBroDaDa_FaFaMoBroDaDaDa_FaFaMoBroDaSoDa_FaFaMoBroSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoSoDa_FaFaMoSisDa_FaFaMoSisDaDa_FaFaMoSisDaDaDa_FaFaMoSisDaSoDa_FaFaMoSisSoDa_FaFaMoSisSoDaDa_FaFaMoSisSoSoDa_FaFaSisDa_FaFaSisDaDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoFaBroDa_FaMoFaBroDaDa_FaMoFaBroDaDaDa_FaMoFaBroDaSoDa_FaMoFaBroSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoSoDa_FaMoFaSisDa_FaMoFaSisDaDa_FaMoFaSisDaDaDa_FaMoFaSisDaSoDa_FaMoFaSisSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoSoDa_FaMoMoBroDa_FaMoMoBroDaDa_FaMoMoBroDaDaDa_FaMoMoBroDaSoDa_FaMoMoBroSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoSoDa_FaMoMoSisDa_FaMoMoSisDaDa_FaMoMoSisDaDaDa_FaMoMoSisDaSoDa_FaMoMoSisSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoSoDa_FaMoSisDa_FaMoSisDaDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_MoFaBroDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaFaBroDa_MoFaFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroDaSoDa_MoFaFaBroSoDa_MoFaFaBroSoDaDa_MoFaFaBroSoSoDa_MoFaFaSisDa_MoFaFaSisDaDa_MoFaFaSisDaDaDa_MoFaFaSisDaSoDa_MoFaFaSisSoDa_MoFaFaSisSoDaDa_MoFaFaSisSoSoDa_MoFaMoBroDa_MoFaMoBroDaDa_MoFaMoBroDaDaDa_MoFaMoBroDaSoDa_MoFaMoBroSoDa_MoFaMoBroSoDaDa_MoFaMoBroSoSoDa_MoFaMoSisDa_MoFaMoSisDaDa_MoFaMoSisDaDaDa_MoFaMoSisDaSoDa_MoFaMoSisSoDa_MoFaMoSisSoDaDa_MoFaMoSisSoSoDa_MoFaSisDa_MoFaSisDaDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDa_MoMoBroDaDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoFaBroDa_MoMoFaBroDaDa_MoMoFaBroDaDaDa_MoMoFaBroDaSoDa_MoMoFaBroSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoSoDa_MoMoFaSisDa_MoMoFaSisDaDa_MoMoFaSisDaDaDa_MoMoFaSisDaSoDa_MoMoFaSisSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoSoDa_MoMoMoBroDa_MoMoMoBroDaDa_MoMoMoBroDaDaDa_MoMoMoBroDaSoDa_MoMoMoBroSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoSoDa_MoMoMoSisDa_MoMoMoSisDaDa_MoMoMoSisDaDaDa_MoMoMoSisDaSoDa_MoMoMoSisSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoSoDa_MoMoSisDa_MoMoSisDaDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa"}
;; 0
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 1
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 2
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 3
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 4
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 5
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 6
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 7
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 8
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 9
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 10
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 11
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 12
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 13
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 14
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 15
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 16
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 17
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 18
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 19
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 20
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 21
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 22
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 23
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 24
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 25
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 26
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 27
%nauwa_jasu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 28
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 29
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 30
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 31
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 32
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 33
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 34
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 35
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 36
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 37
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 38
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 39
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 40
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 41
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 42
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 43
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 44
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 45
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 46
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 47
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 48
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 49
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 50
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 51
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 52
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 53
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 54
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 55
%nauwa_jasu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 56
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 57
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 58
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 59
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 60
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 61
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 62
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 63
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 64
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 65
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 66
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 67
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 68
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 69
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 70
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 71
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 72
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 73
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 74
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 75
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 76
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 77
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 78
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 79
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 80
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 81
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 82
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 83
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 84
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 85
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 86
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 87
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 88
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 89
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 90
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 91
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 92
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 93
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 94
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 95
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 96
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 97
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 98
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 99
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 100
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 101
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 102
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 103
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 104
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 105
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 106
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 107
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 108
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 109
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 110
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 111
%nauwa_jasu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 112
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 113
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 114
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 115
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 116
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 117
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 118
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 119
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 120
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 121
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 122
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 123
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 124
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 125
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 126
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 127
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 128
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 129
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 130
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 131
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 132
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 133
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 134
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 135
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 136
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 137
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 138
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 139
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 140
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 141
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 142
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 143
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 144
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 145
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 146
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 147
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 148
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 149
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 150
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 151
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 152
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 153
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 154
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 155
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 156
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 157
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 158
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 159
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 160
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 161
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 162
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 163
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 164
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 165
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 166
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 167
%nauwa_jasu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).


nauwa_nani(Alter, Ego) :-  nauwa[aux]04(Alter, Ego), male(Alter), younger(Alter, Ego).
                       |   female(Ego), nauwa[aux]04(Alter, Ego), female(Alter), younger(Alter, Ego).
{"FaFaBroDa_FaFaBroDaDa_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSo_FaFaBroSoDa_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaFaBroDa_FaFaFaBroDaDa_FaFaFaBroDaDaDa_FaFaFaBroDaSo_FaFaFaBroDaSoDa_FaFaFaBroSo_FaFaFaBroSoDa_FaFaFaBroSoDaDa_FaFaFaBroSoSo_FaFaFaBroSoSoDa_FaFaFaSisDa_FaFaFaSisDaDa_FaFaFaSisDaDaDa_FaFaFaSisDaSo_FaFaFaSisDaSoDa_FaFaFaSisSo_FaFaFaSisSoDa_FaFaFaSisSoDaDa_FaFaFaSisSoSo_FaFaFaSisSoSoDa_FaFaMoBroDa_FaFaMoBroDaDa_FaFaMoBroDaDaDa_FaFaMoBroDaSo_FaFaMoBroDaSoDa_FaFaMoBroSo_FaFaMoBroSoDa_FaFaMoBroSoDaDa_FaFaMoBroSoSo_FaFaMoBroSoSoDa_FaFaMoSisDa_FaFaMoSisDaDa_FaFaMoSisDaDaDa_FaFaMoSisDaSo_FaFaMoSisDaSoDa_FaFaMoSisSo_FaFaMoSisSoDa_FaFaMoSisSoDaDa_FaFaMoSisSoSo_FaFaMoSisSoSoDa_FaFaSisDa_FaFaSisDaDa_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSo_FaFaSisSoDa_FaFaSisSoDaDa_FaFaSisSoDaSo_FaFaSisSoSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSo_FaMoBroSoDa_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoBroSoSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoFaBroDa_FaMoFaBroDaDa_FaMoFaBroDaDaDa_FaMoFaBroDaSo_FaMoFaBroDaSoDa_FaMoFaBroSo_FaMoFaBroSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoSo_FaMoFaBroSoSoDa_FaMoFaSisDa_FaMoFaSisDaDa_FaMoFaSisDaDaDa_FaMoFaSisDaSo_FaMoFaSisDaSoDa_FaMoFaSisSo_FaMoFaSisSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoSo_FaMoFaSisSoSoDa_FaMoMoBroDa_FaMoMoBroDaDa_FaMoMoBroDaDaDa_FaMoMoBroDaSo_FaMoMoBroDaSoDa_FaMoMoBroSo_FaMoMoBroSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoSo_FaMoMoBroSoSoDa_FaMoMoSisDa_FaMoMoSisDaDa_FaMoMoSisDaDaDa_FaMoMoSisDaSo_FaMoMoSisDaSoDa_FaMoMoSisSo_FaMoMoSisSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoSo_FaMoMoSisSoSoDa_FaMoSisDa_FaMoSisDaDa_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSo_FaMoSisSoDa_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSo_FaMoSisSoSoDa_FaMoSisSoSoSo_MoFaBroDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSo_MoFaBroSoDa_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaFaBroDa_MoFaFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroDaSo_MoFaFaBroDaSoDa_MoFaFaBroSo_MoFaFaBroSoDa_MoFaFaBroSoDaDa_MoFaFaBroSoSo_MoFaFaBroSoSoDa_MoFaFaSisDa_MoFaFaSisDaDa_MoFaFaSisDaDaDa_MoFaFaSisDaSo_MoFaFaSisDaSoDa_MoFaFaSisSo_MoFaFaSisSoDa_MoFaFaSisSoDaDa_MoFaFaSisSoSo_MoFaFaSisSoSoDa_MoFaMoBroDa_MoFaMoBroDaDa_MoFaMoBroDaDaDa_MoFaMoBroDaSo_MoFaMoBroDaSoDa_MoFaMoBroSo_MoFaMoBroSoDa_MoFaMoBroSoDaDa_MoFaMoBroSoSo_MoFaMoBroSoSoDa_MoFaMoSisDa_MoFaMoSisDaDa_MoFaMoSisDaDaDa_MoFaMoSisDaSo_MoFaMoSisDaSoDa_MoFaMoSisSo_MoFaMoSisSoDa_MoFaMoSisSoDaDa_MoFaMoSisSoSo_MoFaMoSisSoSoDa_MoFaSisDa_MoFaSisDaDa_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisDaSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSo_MoFaSisSoDa_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDa_MoMoBroDaDa_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSo_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoFaBroDa_MoMoFaBroDaDa_MoMoFaBroDaDaDa_MoMoFaBroDaSo_MoMoFaBroDaSoDa_MoMoFaBroSo_MoMoFaBroSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoSo_MoMoFaBroSoSoDa_MoMoFaSisDa_MoMoFaSisDaDa_MoMoFaSisDaDaDa_MoMoFaSisDaSo_MoMoFaSisDaSoDa_MoMoFaSisSo_MoMoFaSisSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoSo_MoMoFaSisSoSoDa_MoMoMoBroDa_MoMoMoBroDaDa_MoMoMoBroDaDaDa_MoMoMoBroDaSo_MoMoMoBroDaSoDa_MoMoMoBroSo_MoMoMoBroSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoSo_MoMoMoBroSoSoDa_MoMoMoSisDa_MoMoMoSisDaDa_MoMoMoSisDaDaDa_MoMoMoSisDaSo_MoMoMoSisDaSoDa_MoMoMoSisSo_MoMoMoSisSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoSo_MoMoMoSisSoSoDa_MoMoSisDa_MoMoSisDaDa_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSo_MoMoSisSoDa_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSo_MoMoSisSoSoDa_MoMoSisSoSoSo"}
;; 0
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 1
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 2
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 3
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 4
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 5
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 6
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 7
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 8
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 9
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 10
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 11
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 12
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 13
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 14
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 15
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 16
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 17
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 18
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 19
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 20
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 21
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 22
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 23
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 24
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 25
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 26
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 27
%nauwa_nani:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 28
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 29
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 30
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 31
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 32
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 33
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 34
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 35
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 36
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 37
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 38
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 39
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 40
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 41
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 42
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 43
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 44
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 45
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 46
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 47
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 48
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 49
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 50
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 51
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 52
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 53
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 54
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 55
%nauwa_nani:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 56
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 57
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 58
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 59
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 60
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 61
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 62
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 63
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 64
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 65
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 66
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 67
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 68
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 69
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 70
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 71
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 72
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 73
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 74
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 75
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 76
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 77
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 78
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 79
%nauwa_nani:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 80
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 81
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 82
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 83
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 84
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 85
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 86
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 87
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 88
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 89
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 90
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 91
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 92
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 93
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 94
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 95
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 96
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 97
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 98
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 99
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 100
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 101
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 102
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 103
%nauwa_nani:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 104
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 105
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 106
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 107
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 108
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 109
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 110
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 111
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 112
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 113
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 114
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 115
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 116
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 117
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 118
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 119
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 120
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 121
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 122
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 123
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 124
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 125
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 126
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 127
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 128
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 129
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 130
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 131
%nauwa_nani:1, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 132
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 133
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 134
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 135
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 136
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 137
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 138
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 139
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 140
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 141
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 142
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 143
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 144
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 145
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 146
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 147
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 148
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 149
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 150
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 151
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 152
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 153
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, Ego).
;; 154
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 155
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 156
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 157
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 158
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 159
%nauwa_nani:1, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 160
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 161
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 162
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 163
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 164
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 165
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 166
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 167
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 168
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 169
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 170
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 171
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 172
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 173
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 174
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 175
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 176
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 177
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 178
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 179
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 180
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 181
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 182
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 183
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 184
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 185
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 186
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 187
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 188
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 189
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 190
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 191
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 192
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 193
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 194
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 195
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 196
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 197
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 198
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 199
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 200
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 201
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 202
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 203
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 204
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 205
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 206
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 207
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 208
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 209
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 210
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 211
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 212
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 213
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 214
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 215
%nauwa_nani:1, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 216
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 217
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 218
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 219
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 220
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 221
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 222
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 223
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 224
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 225
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 226
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 227
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 228
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 229
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 230
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 231
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 232
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 233
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 234
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 235
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 236
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 237
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 238
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 239
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 240
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 241
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 242
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 243
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 244
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 245
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 246
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 247
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 248
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 249
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 250
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 251
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 252
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 253
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 254
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 255
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 256
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 257
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 258
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 259
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 260
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 261
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 262
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 263
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 264
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 265
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), younger(Alter, Ego).
;; 266
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 267
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 268
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 269
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 270
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 271
%nauwa_nani:1, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H), female(Alter), younger(Alter, Ego).


nauwa_nu(Alter, Ego) :-  nauwa[aux]04(Alter, Ego), female(Alter), elder(Alter, Ego).
{"FaFaBroDa_FaFaBroDaDa_FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaFaSisDaDa_FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_FaMoFaBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaMoSisDaDa_FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_MoFaBroDa_MoFaBroDaDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa_MoFaFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoFaSisDaDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa_MoMoBroDa_MoMoBroDaDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa_MoMoFaBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoMoSisDaDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa"}
;; 0
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 1
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 2
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 3
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 4
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 5
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 6
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 7
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 8
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 9
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 10
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 11
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 12
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 13
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 14
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 15
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 16
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 17
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 18
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 19
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 20
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 21
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 22
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 23
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 24
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 25
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 26
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 27
%nauwa_nu:0, nauwa[aux]04:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 28
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 29
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 30
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 31
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 32
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 33
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 34
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 35
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 36
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 37
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 38
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 39
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 40
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 41
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 42
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 43
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 44
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 45
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 46
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 47
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 48
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 49
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 50
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 51
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 52
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 53
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 54
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 55
%nauwa_nu:0, nauwa[aux]04:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 56
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 57
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 58
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 59
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 60
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 61
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 62
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 63
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 64
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 65
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 66
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 67
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 68
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 69
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 70
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 71
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 72
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 73
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 74
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 75
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 76
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 77
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 78
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 79
%nauwa_nu:0, nauwa[aux]04:1, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 80
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 81
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 82
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 83
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 84
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 85
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 86
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 87
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 88
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 89
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 90
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 91
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 92
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 93
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 94
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 95
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 96
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 97
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 98
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 99
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 100
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 101
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 102
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 103
%nauwa_nu:0, nauwa[aux]04:1, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, Ego).


nema(Alter, Ego) :-  husband(A, Ego), husband(A, Alter), not(equal(Ego, Alter)).
{"HuWi"}
;; 0
%nema:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
 husband(A, Ego), husband(A, Alter), not(equal(Ego, Alter)).


noma(Alter, Ego) :-  male(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter).
                 |   male(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu_WiBro_WiBroDaDaSo_WiBroDaSo_WiBroDaSoSo_WiBroSo_WiBroSoDaSo_WiBroSoSo_WiBroSoSoSo_WiFaBro_WiFaBroDaDaSo_WiFaBroDaSo_WiFaBroDaSoSo_WiFaBroSo_WiFaBroSoDaSo_WiFaBroSoSo_WiFaBroSoSoSo_WiFaSisDaDaSo_WiFaSisDaSo_WiFaSisDaSoSo_WiFaSisSo_WiFaSisSoDaSo_WiFaSisSoSo_WiFaSisSoSoSo_WiMoBro_WiMoBroDaDaSo_WiMoBroDaSo_WiMoBroDaSoSo_WiMoBroSo_WiMoBroSoDaSo_WiMoBroSoSo_WiMoBroSoSoSo_WiMoSisDaDaSo_WiMoSisDaSo_WiMoSisDaSoSo_WiMoSisSo_WiMoSisSoDaSo_WiMoSisSoSo_WiMoSisSoSoSo_WiSisDaDaSo_WiSisDaSo_WiSisDaSoSo_WiSisSo_WiSisSoDaSo_WiSisSoSo_WiSisSoSoSo"}
;; 0
%noma:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%noma:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%noma:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 4
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 5
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 6
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 7
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 8
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 9
%noma:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 11
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 12
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 13
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 14
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 15
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 16
%noma:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 17
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 18
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 19
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 20
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 21
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter).
;; 22
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 23
%noma:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 24
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 25
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter).
;; 26
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter).
;; 27
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 28
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter).
;; 29
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter).
;; 30
%noma:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter).
;; 31
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter).
;; 32
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter).
;; 33
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 34
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 35
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter).
;; 36
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 37
%noma:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 38
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter).
;; 39
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter).
;; 40
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 41
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 42
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter).
;; 43
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 44
%noma:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 45
%noma:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter).
;; 46
%noma:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter).
;; 47
%noma:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter).
;; 48
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter).
;; 49
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 50
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 51
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 52
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 53
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 54
%noma:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 55
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter).
;; 56
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 57
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 58
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 59
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 60
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 61
%noma:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 62
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter).
;; 63
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 64
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 65
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 66
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 67
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 68
%noma:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 69
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter).
;; 70
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 71
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 72
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 73
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 74
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 75
%noma:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter).
;; 76
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter).
;; 77
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 78
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 79
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 80
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 81
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 82
%noma:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 83
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter).
;; 84
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 85
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 86
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 87
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter).
;; 88
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter).
;; 89
%noma:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter).


noma_dueba(Alter, Ego) :-  male(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter), elder(Alter, Ego).
                       |   male(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter), elder(Alter, Ego).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu_WiBro_WiBroDaDaSo_WiBroDaSo_WiBroDaSoSo_WiBroSo_WiBroSoDaSo_WiBroSoSo_WiBroSoSoSo_WiFaBro_WiFaBroDaDaSo_WiFaBroDaSo_WiFaBroDaSoSo_WiFaBroSo_WiFaBroSoDaSo_WiFaBroSoSo_WiFaBroSoSoSo_WiFaSisDaDaSo_WiFaSisDaSo_WiFaSisDaSoSo_WiFaSisSo_WiFaSisSoDaSo_WiFaSisSoSo_WiFaSisSoSoSo_WiMoBro_WiMoBroDaDaSo_WiMoBroDaSo_WiMoBroDaSoSo_WiMoBroSo_WiMoBroSoDaSo_WiMoBroSoSo_WiMoBroSoSoSo_WiMoSisDaDaSo_WiMoSisDaSo_WiMoSisDaSoSo_WiMoSisSo_WiMoSisSoDaSo_WiMoSisSoSo_WiMoSisSoSoSo_WiSisDaDaSo_WiSisDaSo_WiSisDaSoSo_WiSisSo_WiSisSoDaSo_WiSisSoSo_WiSisSoSoSo"}
;; 0
%noma_dueba:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, Ego).
;; 1
%noma_dueba:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 2
%noma_dueba:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, Ego).
;; 3
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 4
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 5
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 6
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 7
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 8
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 9
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 10
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 11
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 12
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 13
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 14
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 15
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 16
%noma_dueba:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 17
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 18
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 19
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 20
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 21
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 22
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 23
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 24
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 25
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 26
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 27
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 28
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 29
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 30
%noma_dueba:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 31
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 32
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 33
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 34
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 35
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 36
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 37
%noma_dueba:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 38
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 39
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 40
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 41
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 42
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), elder(Alter, Ego).
;; 43
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 44
%noma_dueba:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), elder(Alter, Ego).
;; 45
%noma_dueba:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter), elder(Alter, Ego).
;; 46
%noma_dueba:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 47
%noma_dueba:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 48
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 49
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 50
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 51
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 52
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 53
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 54
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 55
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 56
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 57
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 58
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 59
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 60
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 61
%noma_dueba:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 62
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 63
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 64
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 65
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 66
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 67
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 68
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 69
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 70
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 71
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 72
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 73
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 74
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 75
%noma_dueba:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), elder(Alter, Ego).
;; 76
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 77
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 78
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 79
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 80
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 81
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 82
%noma_dueba:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 83
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter), elder(Alter, Ego).
;; 84
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 85
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 86
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 87
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), elder(Alter, Ego).
;; 88
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).
;; 89
%noma_dueba:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), elder(Alter, Ego).


noma_sukkua(Alter, Ego) :-  male(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), male(Alter), younger(Alter, Ego).
                        |   male(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), male(Alter), younger(Alter, Ego).
{"BroDaDaDaHu_BroDaDaHu_BroDaHu_BroDaSoDaHu_BroSoDaDaHu_BroSoDaHu_BroSoSoDaHu_FaBroDaDaDaHu_FaBroDaDaHu_FaBroDaHu_FaBroDaSoDaHu_FaBroSoDaDaHu_FaBroSoDaHu_FaBroSoSoDaHu_FaSisDaDaDaHu_FaSisDaDaHu_FaSisDaHu_FaSisDaSoDaHu_FaSisHu_FaSisSoDaDaHu_FaSisSoDaHu_FaSisSoSoDaHu_MoBroDaDaDaHu_MoBroDaDaHu_MoBroDaHu_MoBroDaSoDaHu_MoBroSoDaDaHu_MoBroSoDaHu_MoBroSoSoDaHu_MoSisDaDaDaHu_MoSisDaDaHu_MoSisDaHu_MoSisDaSoDaHu_MoSisHu_MoSisSoDaDaHu_MoSisSoDaHu_MoSisSoSoDaHu_SisDaDaDaHu_SisDaDaHu_SisDaHu_SisDaSoDaHu_SisHu_SisSoDaDaHu_SisSoDaHu_SisSoSoDaHu_WiBro_WiBroDaDaSo_WiBroDaSo_WiBroDaSoSo_WiBroSo_WiBroSoDaSo_WiBroSoSo_WiBroSoSoSo_WiFaBro_WiFaBroDaDaSo_WiFaBroDaSo_WiFaBroDaSoSo_WiFaBroSo_WiFaBroSoDaSo_WiFaBroSoSo_WiFaBroSoSoSo_WiFaSisDaDaSo_WiFaSisDaSo_WiFaSisDaSoSo_WiFaSisSo_WiFaSisSoDaSo_WiFaSisSoSo_WiFaSisSoSoSo_WiMoBro_WiMoBroDaDaSo_WiMoBroDaSo_WiMoBroDaSoSo_WiMoBroSo_WiMoBroSoDaSo_WiMoBroSoSo_WiMoBroSoSoSo_WiMoSisDaDaSo_WiMoSisDaSo_WiMoSisDaSoSo_WiMoSisSo_WiMoSisSoDaSo_WiMoSisSoSo_WiMoSisSoSoSo_WiSisDaDaSo_WiSisDaSo_WiSisDaSoSo_WiSisSo_WiSisSoDaSo_WiSisSoSo_WiSisSoSoSo"}
;; 0
%noma_sukkua:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, Ego).
;; 1
%noma_sukkua:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 2
%noma_sukkua:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, Ego).
;; 3
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 4
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 5
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 6
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 7
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 8
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 9
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 10
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 11
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 12
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 13
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 14
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 15
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 16
%noma_sukkua:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 17
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 18
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 19
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 20
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 21
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 22
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 23
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 24
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 25
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 26
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 27
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 28
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 29
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 30
%noma_sukkua:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
 male(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 31
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 32
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 33
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 34
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 35
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 36
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 37
%noma_sukkua:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 38
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 39
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 40
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 41
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 42
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), male(Alter), younger(Alter, Ego).
;; 43
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 44
%noma_sukkua:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter), younger(Alter, Ego).
;; 45
%noma_sukkua:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), male(Alter), younger(Alter, Ego).
;; 46
%noma_sukkua:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 47
%noma_sukkua:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 48
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 49
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 50
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 51
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 52
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 53
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 54
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 55
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 56
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 57
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 58
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 59
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 60
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 61
%noma_sukkua:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 62
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 63
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 64
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 65
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 66
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 67
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 68
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 69
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 70
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 71
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 72
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 73
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 74
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 75
%noma_sukkua:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), male(Alter), younger(Alter, Ego).
;; 76
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 77
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 78
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 79
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 80
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 81
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 82
%noma_sukkua:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 83
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), male(Alter), younger(Alter, Ego).
;; 84
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 85
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 86
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 87
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), male(Alter), younger(Alter, Ego).
;; 88
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).
;; 89
%noma_sukkua:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), male(Alter), younger(Alter, Ego).


nuhu(Alter, Ego) :-  sibling[aux]04(Alter, Ego), female(Alter), elder(Alter, Ego).
{"BroDa_BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_BroSoDaDa_BroSoSoDa_FaBroDa_FaBroDaDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDa_FaBroSoDaDa_FaBroSoSoDa_FaSis_FaSisDa_FaSisDaDa_FaSisDaDaDa_FaSisDaSoDa_FaSisSoDa_FaSisSoDaDa_FaSisSoSoDa_MoBroDa_MoBroDaDa_MoBroDaDaDa_MoBroDaSoDa_MoBroSoDa_MoBroSoDaDa_MoBroSoSoDa_MoSis_MoSisDa_MoSisDaDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDa_MoSisSoDaDa_MoSisSoSoDa_Sis_SisDa_SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa"}
;; 0
%nuhu:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%nuhu:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, Ego).
;; 2
%nuhu:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, Ego).
;; 3
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 4
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 5
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 6
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 7
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 8
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 9
%nuhu:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 10
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 11
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 12
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 13
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 14
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 15
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 16
%nuhu:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 17
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 18
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 19
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 20
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 21
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 22
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 23
%nuhu:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 24
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 25
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 26
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 27
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 28
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 29
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 30
%nuhu:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter), elder(Alter, Ego).
;; 31
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C), female(Alter), elder(Alter, Ego).
;; 32
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 33
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 34
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 35
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 36
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 37
%nuhu:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 38
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C), female(Alter), elder(Alter, Ego).
;; 39
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 40
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 41
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 42
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 43
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).
;; 44
%nuhu:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E), female(Alter), elder(Alter, Ego).


parent[aux]04(Alter, Ego) :-  parent(Alter, Ego).
                          |   parents(A, Ego), parent(Alter, A).
                          |  [ext],  parents(A, Ego), parents(B, A), lineal[aux]04up(Alter, B).
;; 0
%parent[aux]04:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 1
%parent[aux]04:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 2
%parent[aux]04:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 3
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B).
;; 4
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 5
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 6
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 7
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 8
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 9
%parent[aux]04:2, parents:0, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 10
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B).
;; 11
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 12
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 13
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 14
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 15
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 16
%parent[aux]04:2, parents:0, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 17
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B).
;; 18
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 19
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 20
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 21
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 22
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 23
%parent[aux]04:2, parents:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 24
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B).
;; 25
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 26
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 27
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 28
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 29
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:0, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 30
%parent[aux]04:2, parents:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:1, parents:1, lineal[aux]04up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).


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


sewa(Alter, Ego) :-  spice(Alter, Ego).
{"Hu_Wi"}
;; 0
%sewa:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%sewa:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


sibling(Alter, Ego) :-  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 0
%sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).


sibling[aux]04(Alter, Ego) :-  sibling(Alter, Ego).
                           |   parents(A, Ego), sibling(Alter, A).
                           |   parents(A, Ego), siblings(B, A), lineal[aux]04down(Alter, B).
                           |   siblings(A, Ego), lineal[aux]04down(Alter, A).
;; 0
%sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%sibling[aux]04:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 2
%sibling[aux]04:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 3
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E).
;; 5
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 6
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 7
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E).
;; 8
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 9
%sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 10
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 11
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E).
;; 12
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 13
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 14
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E).
;; 15
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 16
%sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 17
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 18
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E).
;; 19
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 20
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 21
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E).
;; 22
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 23
%sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 24
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 25
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E).
;; 26
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 27
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 28
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E).
;; 29
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 30
%sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 31
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(Alter, C).
;; 32
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D).
;; 33
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(Alter, E).
;; 34
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(Alter, E).
;; 35
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D).
;; 36
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(Alter, E).
;; 37
%sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(Alter, E).
;; 38
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(Alter, C).
;; 39
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D).
;; 40
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(Alter, E).
;; 41
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(Alter, E).
;; 42
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D).
;; 43
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(Alter, E).
;; 44
%sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(Alter, E).


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


sukkua(Alter, Ego) :-  child[aux]04(Alter, Ego), male(Alter).
                   |   step_son(Alter, Ego).
                   |   step_son(A, Ego), son(Alter, A).
                   |   step_daughter(A, Ego), son(Alter, A).
                   |  [ext],  step_son(A, Ego), children(B, A), lineal[aux]04down(Alter, B), male(Alter).
                   |  [ext],  step_daughter(A, Ego), children(B, A), lineal[aux]04down(Alter, B), male(Alter).
{"DaDaDaDaSo_DaDaDaSo_DaDaDaSoSo_DaDaSo_DaDaSoDaSo_DaDaSoSo_DaDaSoSoSo_DaSo_DaSoDaDaSo_DaSoDaSo_DaSoDaSoSo_DaSoSo_DaSoSoDaSo_DaSoSoSo_DaSoSoSoSo_So_SoDaDaDaSo_SoDaDaSo_SoDaDaSoSo_SoDaSo_SoDaSoDaSo_SoDaSoSo_SoDaSoSoSo_SoSo_SoSoDaDaSo_SoSoDaSo_SoSoDaSoSo_SoSoSo_SoSoSoDaSo_SoSoSoSo_SoSoSoSoSo_StdaDaDaDaSo_StdaDaDaSo_StdaDaDaSoSo_StdaDaSo_StdaDaSoDaSo_StdaDaSoSo_StdaDaSoSoSo_StdaSo_StdaSoDaDaSo_StdaSoDaSo_StdaSoDaSoSo_StdaSoSo_StdaSoSoDaSo_StdaSoSoSo_StdaSoSoSoSo_Stso_StsoDaDaDaSo_StsoDaDaSo_StsoDaDaSoSo_StsoDaSo_StsoDaSoDaSo_StsoDaSoSo_StsoDaSoSoSo_StsoSo_StsoSoDaDaSo_StsoSoDaSo_StsoSoDaSoSo_StsoSoSo_StsoSoSoDaSo_StsoSoSoSo_StsoSoSoSoSo"}
;; 0
%sukkua:0, child[aux]04:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 child(Alter, Ego), male(Alter).
;; 1
%sukkua:0, child[aux]04:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), child(Alter, A), male(Alter).
;; 2
%sukkua:0, child[aux]04:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), child(Alter, A), male(Alter).
;; 3
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  son(A, Ego), son(B, A), child(Alter, B), male(Alter).
;; 4
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext],  son(A, Ego), son(B, A), son(C, B), child(Alter, C), male(Alter).
;; 5
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
[ext],  son(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D), male(Alter).
;; 6
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
[ext],  son(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 7
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), child(Alter, C), male(Alter).
;; 8
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D), male(Alter).
;; 9
%sukkua:0, child[aux]04:2, children:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 10
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  son(A, Ego), daughter(B, A), child(Alter, B), male(Alter).
;; 11
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), child(Alter, C), male(Alter).
;; 12
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D), male(Alter).
;; 13
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 14
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C), male(Alter).
;; 15
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D), male(Alter).
;; 16
%sukkua:0, child[aux]04:2, children:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 17
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  daughter(A, Ego), son(B, A), child(Alter, B), male(Alter).
;; 18
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), child(Alter, C), male(Alter).
;; 19
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), son(D, C), child(Alter, D), male(Alter).
;; 20
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 21
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), child(Alter, C), male(Alter).
;; 22
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(D, C), child(Alter, D), male(Alter).
;; 23
%sukkua:0, child[aux]04:2, children:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 24
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), child(Alter, B), male(Alter).
;; 25
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), child(Alter, C), male(Alter).
;; 26
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(D, C), child(Alter, D), male(Alter).
;; 27
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 28
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), child(Alter, C), male(Alter).
;; 29
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(D, C), child(Alter, D), male(Alter).
;; 30
%sukkua:0, child[aux]04:2, children:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), child(Alter, D), male(Alter).
;; 31
%sukkua:1, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 32
%sukkua:2, step_son:0%
 Lvl=-2,  PC=3, S=2, Star=0,  {StsoSo}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(Alter, C).
;; 33
%sukkua:3, step_daughter:0%
 Lvl=-2,  PC=3, S=2, Star=0,  {StdaSo}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(Alter, C).
;; 34
%sukkua:4, step_son:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StsoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), child(Alter, D), male(Alter).
;; 35
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), child(Alter, E), male(Alter).
;; 36
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 37
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 38
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), child(Alter, E), male(Alter).
;; 39
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 40
%sukkua:4, step_son:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoSoDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), son(D, C), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 41
%sukkua:4, step_son:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StsoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), child(Alter, D), male(Alter).
;; 42
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), child(Alter, E), male(Alter).
;; 43
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 44
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 45
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StsoDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter).
;; 46
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 47
%sukkua:4, step_son:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StsoDaDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(C, B), son(C, A), daughter(D, C), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 48
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StdaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), child(Alter, D), male(Alter).
;; 49
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), child(Alter, E), male(Alter).
;; 50
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 51
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 52
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), child(Alter, E), male(Alter).
;; 53
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 54
%sukkua:5, step_daughter:0, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaSoDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), son(D, C), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 55
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=4, S=2, Star=0,  {StdaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), child(Alter, D), male(Alter).
;; 56
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), child(Alter, E), male(Alter).
;; 57
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaSoSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 58
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaSoDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 59
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-4,  PC=5, S=2, Star=0,  {StdaDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), child(Alter, E), male(Alter).
;; 60
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaDaSoSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 61
%sukkua:5, step_daughter:0, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-5,  PC=6, S=2, Star=0,  {StdaDaDaDaSo}  
[ext],  spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), daughter(D, C), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).


zuwi(Alter, Ego) :-  female(Ego), spouse(A, Ego), sibling[aux]04(Alter, A), female(Alter).
                 |   female(Ego), sibling[aux]04(A, Ego), spouse(A, Alter), female(Alter).
{"BroDaDaSoWi_BroDaSoSoWi_BroDaSoWi_BroSoDaSoWi_BroSoSoSoWi_BroSoSoWi_BroSoWi_BroWi_FaBroDaDaSoWi_FaBroDaSoSoWi_FaBroDaSoWi_FaBroSoDaSoWi_FaBroSoSoSoWi_FaBroSoSoWi_FaBroSoWi_FaBroWi_FaSisDaDaSoWi_FaSisDaSoSoWi_FaSisDaSoWi_FaSisSoDaSoWi_FaSisSoSoSoWi_FaSisSoSoWi_FaSisSoWi_HuBroDa_HuBroDaDa_HuBroDaDaDa_HuBroDaSoDa_HuBroSoDa_HuBroSoDaDa_HuBroSoSoDa_HuFaBroDa_HuFaBroDaDa_HuFaBroDaDaDa_HuFaBroDaSoDa_HuFaBroSoDa_HuFaBroSoDaDa_HuFaBroSoSoDa_HuFaSis_HuFaSisDa_HuFaSisDaDa_HuFaSisDaDaDa_HuFaSisDaSoDa_HuFaSisSoDa_HuFaSisSoDaDa_HuFaSisSoSoDa_HuMoBroDa_HuMoBroDaDa_HuMoBroDaDaDa_HuMoBroDaSoDa_HuMoBroSoDa_HuMoBroSoDaDa_HuMoBroSoSoDa_HuMoSis_HuMoSisDa_HuMoSisDaDa_HuMoSisDaDaDa_HuMoSisDaSoDa_HuMoSisSoDa_HuMoSisSoDaDa_HuMoSisSoSoDa_HuSis_HuSisDa_HuSisDaDa_HuSisDaDaDa_HuSisDaSoDa_HuSisSoDa_HuSisSoDaDa_HuSisSoSoDa_MoBroDaDaSoWi_MoBroDaSoSoWi_MoBroDaSoWi_MoBroSoDaSoWi_MoBroSoSoSoWi_MoBroSoSoWi_MoBroSoWi_MoBroWi_MoSisDaDaSoWi_MoSisDaSoSoWi_MoSisDaSoWi_MoSisSoDaSoWi_MoSisSoSoSoWi_MoSisSoSoWi_MoSisSoWi_SisDaDaSoWi_SisDaSoSoWi_SisDaSoWi_SisSoDaSoWi_SisSoSoSoWi_SisSoSoWi_SisSoWi"}
;; 0
%zuwi:0, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%zuwi:0, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%zuwi:0, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 4
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 5
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 6
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 8
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 9
%zuwi:0, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 11
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 12
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 13
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 14
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 15
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 16
%zuwi:0, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 18
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 19
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 20
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 21
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F), female(Alter).
;; 22
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 23
%zuwi:0, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 24
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F), female(Alter).
;; 26
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), child(Alter, G), female(Alter).
;; 27
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 28
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F), female(Alter).
;; 29
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), child(Alter, G), female(Alter).
;; 30
%zuwi:0, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaDa}  
 female(Ego), spouse(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D), female(Alter).
;; 32
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(Alter, E), female(Alter).
;; 33
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 34
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 35
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(Alter, E), female(Alter).
;; 36
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 37
%zuwi:0, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 38
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D), female(Alter).
;; 39
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(Alter, E), female(Alter).
;; 40
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 41
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 42
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(Alter, E), female(Alter).
;; 43
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 44
%zuwi:0, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaDa}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 45
%zuwi:1, sibling[aux]04:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(C, Alter), female(Alter).
;; 46
%zuwi:1, sibling[aux]04:1, parents:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), female(Alter).
;; 47
%zuwi:1, sibling[aux]04:1, parents:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(D, Alter), female(Alter).
;; 48
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), female(Alter).
;; 49
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 50
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 51
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 52
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 53
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 54
%zuwi:1, sibling[aux]04:2, parents:0, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 55
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), female(Alter).
;; 56
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 57
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 58
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 59
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 60
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 61
%zuwi:1, sibling[aux]04:2, parents:0, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 62
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(E, Alter), female(Alter).
;; 63
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 64
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 65
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 66
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 67
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 68
%zuwi:1, sibling[aux]04:2, parents:1, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 69
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(E, Alter), female(Alter).
;; 70
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 71
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 72
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 73
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 74
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 75
%zuwi:1, sibling[aux]04:2, parents:1, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(G, Alter), female(Alter).
;; 76
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), child(D, C), spouse(D, Alter), female(Alter).
;; 77
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 78
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 79
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 80
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 81
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 82
%zuwi:1, sibling[aux]04:3, siblings:0, brother:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 83
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), child(D, C), spouse(D, Alter), female(Alter).
;; 84
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 85
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 86
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 87
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(E, Alter), female(Alter).
;; 88
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:0, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), child(F, E), spouse(F, Alter), female(Alter).
;; 89
%zuwi:1, sibling[aux]04:3, siblings:1, sister:0, sibling:0, lineal[aux]04down:1, children:1, lineal[aux]04down:1, children:1, lineal[aux]04down:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), child(F, E), spouse(F, Alter), female(Alter).

