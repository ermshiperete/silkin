;;  Horn Clause Representation of Agta Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Agta") (author, "Tom Headland") (date, "1987-01-01") (non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

aka(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
{"Bro_Sis"}
;; 0
%aka:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%aka:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).


ama(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%ama:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


amay(Alter, Ego) :-  parents(A, Ego), brother(Alter, A).
                 |   parents(A, Ego), sister(B, A), wife(B, Alter).
                 |   parents(A, Ego), parents(B, A), siblings(C, B), son(Alter, C).
                 |   parents(A, Ego), parents(B, A), siblings(C, B), daughter(D, C), wife(D, Alter).
{"FaBro_FaFaBroDaHu_FaFaBroSo_FaFaSisDaHu_FaFaSisSo_FaMoBroDaHu_FaMoBroSo_FaMoSisDaHu_FaMoSisSo_FaSisHu_MoBro_MoFaBroDaHu_MoFaBroSo_MoFaSisDaHu_MoFaSisSo_MoMoBroDaHu_MoMoBroSo_MoMoSisDaHu_MoMoSisSo_MoSisHu"}
;; 0
%amay:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%amay:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%amay:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), wife(D, Alter).
;; 3
%amay:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), wife(D, Alter).
;; 4
%amay:2, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 5
%amay:2, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 6
%amay:2, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 7
%amay:2, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 8
%amay:2, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 9
%amay:2, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 10
%amay:2, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 11
%amay:2, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 12
%amay:3, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), wife(F, Alter).
;; 13
%amay:3, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), wife(F, Alter).
;; 14
%amay:3, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), wife(F, Alter).
;; 15
%amay:3, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), wife(F, Alter).
;; 16
%amay:3, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), wife(F, Alter).
;; 17
%amay:3, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), wife(F, Alter).
;; 18
%amay:3, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), wife(F, Alter).
;; 19
%amay:3, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), wife(F, Alter).


anak(Alter, Ego) :-  children(Alter, Ego).
{"Da_So"}
;; 0
%anak:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%anak:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


aneng(Alter, Ego) :-  siblings(A, Ego), children(Alter, A).
                  |   pensan(A, Ego), children(Alter, A).
                  |   spice(A, Ego), siblings(B, A), children(Alter, B).
                  |   spice(A, Ego), pensan(B, A), children(Alter, B).
{"BroDa_BroSo_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_HuBroDa_HuBroSo_HuFaBroDaDa_HuFaBroDaSo_HuFaBroSoDa_HuFaBroSoSo_HuFaFaBroDaDaDa_HuFaFaBroDaDaSo_HuFaFaBroDaSoDa_HuFaFaBroDaSoSo_HuFaFaBroSoDaDa_HuFaFaBroSoDaSo_HuFaFaBroSoSoDa_HuFaFaBroSoSoSo_HuFaFaSisDaDaDa_HuFaFaSisDaDaSo_HuFaFaSisDaSoDa_HuFaFaSisDaSoSo_HuFaFaSisSoDaDa_HuFaFaSisSoDaSo_HuFaFaSisSoSoDa_HuFaFaSisSoSoSo_HuFaMoBroDaDaDa_HuFaMoBroDaDaSo_HuFaMoBroDaSoDa_HuFaMoBroDaSoSo_HuFaMoBroSoDaDa_HuFaMoBroSoDaSo_HuFaMoBroSoSoDa_HuFaMoBroSoSoSo_HuFaMoSisDaDaDa_HuFaMoSisDaDaSo_HuFaMoSisDaSoDa_HuFaMoSisDaSoSo_HuFaMoSisSoDaDa_HuFaMoSisSoDaSo_HuFaMoSisSoSoDa_HuFaMoSisSoSoSo_HuFaSisDaDa_HuFaSisDaSo_HuFaSisSoDa_HuFaSisSoSo_HuMoBroDaDa_HuMoBroDaSo_HuMoBroSoDa_HuMoBroSoSo_HuMoFaBroDaDaDa_HuMoFaBroDaDaSo_HuMoFaBroDaSoDa_HuMoFaBroDaSoSo_HuMoFaBroSoDaDa_HuMoFaBroSoDaSo_HuMoFaBroSoSoDa_HuMoFaBroSoSoSo_HuMoFaSisDaDaDa_HuMoFaSisDaDaSo_HuMoFaSisDaSoDa_HuMoFaSisDaSoSo_HuMoFaSisSoDaDa_HuMoFaSisSoDaSo_HuMoFaSisSoSoDa_HuMoFaSisSoSoSo_HuMoMoBroDaDaDa_HuMoMoBroDaDaSo_HuMoMoBroDaSoDa_HuMoMoBroDaSoSo_HuMoMoBroSoDaDa_HuMoMoBroSoDaSo_HuMoMoBroSoSoDa_HuMoMoBroSoSoSo_HuMoMoSisDaDaDa_HuMoMoSisDaDaSo_HuMoMoSisDaSoDa_HuMoMoSisDaSoSo_HuMoMoSisSoDaDa_HuMoMoSisSoDaSo_HuMoMoSisSoSoDa_HuMoMoSisSoSoSo_HuMoSisDaDa_HuMoSisDaSo_HuMoSisSoDa_HuMoSisSoSo_HuSisDa_HuSisSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_WiBroDa_WiBroSo_WiFaBroDaDa_WiFaBroDaSo_WiFaBroSoDa_WiFaBroSoSo_WiFaFaBroDaDaDa_WiFaFaBroDaDaSo_WiFaFaBroDaSoDa_WiFaFaBroDaSoSo_WiFaFaBroSoDaDa_WiFaFaBroSoDaSo_WiFaFaBroSoSoDa_WiFaFaBroSoSoSo_WiFaFaSisDaDaDa_WiFaFaSisDaDaSo_WiFaFaSisDaSoDa_WiFaFaSisDaSoSo_WiFaFaSisSoDaDa_WiFaFaSisSoDaSo_WiFaFaSisSoSoDa_WiFaFaSisSoSoSo_WiFaMoBroDaDaDa_WiFaMoBroDaDaSo_WiFaMoBroDaSoDa_WiFaMoBroDaSoSo_WiFaMoBroSoDaDa_WiFaMoBroSoDaSo_WiFaMoBroSoSoDa_WiFaMoBroSoSoSo_WiFaMoSisDaDaDa_WiFaMoSisDaDaSo_WiFaMoSisDaSoDa_WiFaMoSisDaSoSo_WiFaMoSisSoDaDa_WiFaMoSisSoDaSo_WiFaMoSisSoSoDa_WiFaMoSisSoSoSo_WiFaSisDaDa_WiFaSisDaSo_WiFaSisSoDa_WiFaSisSoSo_WiMoBroDaDa_WiMoBroDaSo_WiMoBroSoDa_WiMoBroSoSo_WiMoFaBroDaDaDa_WiMoFaBroDaDaSo_WiMoFaBroDaSoDa_WiMoFaBroDaSoSo_WiMoFaBroSoDaDa_WiMoFaBroSoDaSo_WiMoFaBroSoSoDa_WiMoFaBroSoSoSo_WiMoFaSisDaDaDa_WiMoFaSisDaDaSo_WiMoFaSisDaSoDa_WiMoFaSisDaSoSo_WiMoFaSisSoDaDa_WiMoFaSisSoDaSo_WiMoFaSisSoSoDa_WiMoFaSisSoSoSo_WiMoMoBroDaDaDa_WiMoMoBroDaDaSo_WiMoMoBroDaSoDa_WiMoMoBroDaSoSo_WiMoMoBroSoDaDa_WiMoMoBroSoDaSo_WiMoMoBroSoSoDa_WiMoMoBroSoSoSo_WiMoMoSisDaDaDa_WiMoMoSisDaDaSo_WiMoMoSisDaSoDa_WiMoMoSisDaSoSo_WiMoMoSisSoDaDa_WiMoMoSisSoDaSo_WiMoMoSisSoSoDa_WiMoMoSisSoSoSo_WiMoSisDaDa_WiMoSisDaSo_WiMoSisSoDa_WiMoSisSoSo_WiSisDa_WiSisSo"}
;; 0
%aneng:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%aneng:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%aneng:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 3
%aneng:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 4
%aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 5
%aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 6
%aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 7
%aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 8
%aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 9
%aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 10
%aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 11
%aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 12
%aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 13
%aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 14
%aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 15
%aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 16
%aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 17
%aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 18
%aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 19
%aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 20
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 21
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 22
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 23
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 24
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 25
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 26
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 27
%aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 28
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 29
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 30
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 32
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 33
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 34
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 35
%aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 37
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 38
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 39
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 41
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 42
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 43
%aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 44
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 45
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 46
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 47
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 48
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 49
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 50
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 51
%aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 52
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 53
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 54
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 55
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 56
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 57
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 58
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 59
%aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 60
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 61
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 62
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 63
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 64
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 65
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 66
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 67
%aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 68
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 69
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 70
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 71
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 72
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 73
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 74
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 75
%aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 76
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 77
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 78
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 79
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 81
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 82
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 83
%aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 85
%aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 86
%aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 87
%aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 88
%aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 89
%aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 90
%aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 91
%aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 92
%aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 93
%aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 94
%aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 95
%aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 96
%aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 97
%aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 98
%aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 99
%aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 100
%aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 101
%aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 102
%aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 103
%aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 104
%aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 105
%aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 106
%aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 107
%aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 108
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 109
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 110
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 111
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 114
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 115
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 117
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 118
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 119
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 122
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 123
%aneng:3, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoSisDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 125
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 126
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 127
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 130
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 131
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaBroDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 132
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 133
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 134
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 135
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 136
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 137
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 138
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 139
%aneng:3, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoFaSisDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 140
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 141
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 142
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 143
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 144
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 145
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 146
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 147
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoBroDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 148
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 149
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 150
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 151
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 152
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 153
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 154
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 155
%aneng:3, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaMoSisDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 156
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 157
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 158
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 159
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroSoDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 160
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroDaSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 161
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroDaSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 162
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroDaDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 163
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaBroDaDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 164
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisSoSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 165
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisSoSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 166
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisSoDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 167
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisSoDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 168
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisDaSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 169
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisDaSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 170
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisDaDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 171
%aneng:3, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuFaFaSisDaDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 172
%aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 173
%aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 174
%aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 175
%aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 176
%aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 177
%aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 178
%aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 179
%aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 180
%aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 181
%aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 182
%aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 183
%aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 184
%aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 185
%aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 186
%aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 187
%aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 188
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 189
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 190
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 191
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 192
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 193
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 194
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 195
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 196
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 197
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 198
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 199
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 200
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 201
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 202
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 203
%aneng:3, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoSisDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 204
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 205
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 206
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 207
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 208
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 209
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 210
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 211
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaBroDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 212
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 213
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 214
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 215
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 216
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 217
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 218
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 219
%aneng:3, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoFaSisDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 220
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 221
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 222
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 223
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 224
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 225
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 226
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 227
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 228
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 229
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 230
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 231
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 232
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 233
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 234
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 235
%aneng:3, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaMoSisDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 236
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 237
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(Alter, H).
;; 238
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 239
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroSoDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 240
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroDaSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 241
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroDaSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 242
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroDaDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 243
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaBroDaDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 244
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisSoSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 245
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisSoSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(Alter, H).
;; 246
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisSoDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 247
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisSoDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(Alter, H).
;; 248
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisDaSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 249
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisDaSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 250
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisDaDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 251
%aneng:3, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiFaFaSisDaDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(Alter, H).


apo(Alter, Ego) :-  children(A, Ego), children(Alter, A).
                |   children(A, Ego), children(B, A), children(Alter, B).
                |   aneng(A, Ego), children(Alter, A).
                |   aneng(A, Ego), children(B, A), children(Alter, B).
                |   parents(A, Ego), parents(Alter, A).
                |   parents(A, Ego), parents(B, A), siblings(Alter, B).
                |   parents(A, Ego), parents(B, A), parents(Alter, B).
                |   parents(A, Ego), parents(B, A), parents(C, B), siblings(Alter, C).
{"BroDaDa_BroDaDaDa_BroDaDaSo_BroDaSo_BroDaSoDa_BroDaSoSo_BroSoDa_BroSoDaDa_BroSoDaSo_BroSoSo_BroSoSoDa_BroSoSoSo_DaDa_DaDaDa_DaDaSo_DaSo_DaSoDa_DaSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFa_FaFaBro_FaFaBroDaDaDaDa_FaFaBroDaDaDaSo_FaFaBroDaDaSoDa_FaFaBroDaDaSoSo_FaFaBroDaSoDaDa_FaFaBroDaSoDaSo_FaFaBroDaSoSoDa_FaFaBroDaSoSoSo_FaFaBroSoDaDaDa_FaFaBroSoDaDaSo_FaFaBroSoDaSoDa_FaFaBroSoDaSoSo_FaFaBroSoSoDaDa_FaFaBroSoSoDaSo_FaFaBroSoSoSoDa_FaFaBroSoSoSoSo_FaFaFa_FaFaFaBro_FaFaFaSis_FaFaMo_FaFaMoBro_FaFaMoSis_FaFaSis_FaFaSisDaDaDaDa_FaFaSisDaDaDaSo_FaFaSisDaDaSoDa_FaFaSisDaDaSoSo_FaFaSisDaSoDaDa_FaFaSisDaSoDaSo_FaFaSisDaSoSoDa_FaFaSisDaSoSoSo_FaFaSisSoDaDaDa_FaFaSisSoDaDaSo_FaFaSisSoDaSoDa_FaFaSisSoDaSoSo_FaFaSisSoSoDaDa_FaFaSisSoSoDaSo_FaFaSisSoSoSoDa_FaFaSisSoSoSoSo_FaMo_FaMoBro_FaMoBroDaDaDaDa_FaMoBroDaDaDaSo_FaMoBroDaDaSoDa_FaMoBroDaDaSoSo_FaMoBroDaSoDaDa_FaMoBroDaSoDaSo_FaMoBroDaSoSoDa_FaMoBroDaSoSoSo_FaMoBroSoDaDaDa_FaMoBroSoDaDaSo_FaMoBroSoDaSoDa_FaMoBroSoDaSoSo_FaMoBroSoSoDaDa_FaMoBroSoSoDaSo_FaMoBroSoSoSoDa_FaMoBroSoSoSoSo_FaMoFa_FaMoFaBro_FaMoFaSis_FaMoMo_FaMoMoBro_FaMoMoSis_FaMoSis_FaMoSisDaDaDaDa_FaMoSisDaDaDaSo_FaMoSisDaDaSoDa_FaMoSisDaDaSoSo_FaMoSisDaSoDaDa_FaMoSisDaSoDaSo_FaMoSisDaSoSoDa_FaMoSisDaSoSoSo_FaMoSisSoDaDaDa_FaMoSisSoDaDaSo_FaMoSisSoDaSoDa_FaMoSisSoDaSoSo_FaMoSisSoSoDaDa_FaMoSisSoSoDaSo_FaMoSisSoSoSoDa_FaMoSisSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoSo_HuBroDaDa_HuBroDaDaDa_HuBroDaDaSo_HuBroDaSo_HuBroDaSoDa_HuBroDaSoSo_HuBroSoDa_HuBroSoDaDa_HuBroSoDaSo_HuBroSoSo_HuBroSoSoDa_HuBroSoSoSo_HuFaBroDaDaDa_HuFaBroDaDaDaDa_HuFaBroDaDaDaSo_HuFaBroDaDaSo_HuFaBroDaDaSoDa_HuFaBroDaDaSoSo_HuFaBroDaSoDa_HuFaBroDaSoDaDa_HuFaBroDaSoDaSo_HuFaBroDaSoSo_HuFaBroDaSoSoDa_HuFaBroDaSoSoSo_HuFaBroSoDaDa_HuFaBroSoDaDaDa_HuFaBroSoDaDaSo_HuFaBroSoDaSo_HuFaBroSoDaSoDa_HuFaBroSoDaSoSo_HuFaBroSoSoDa_HuFaBroSoSoDaDa_HuFaBroSoSoDaSo_HuFaBroSoSoSo_HuFaBroSoSoSoDa_HuFaBroSoSoSoSo_HuFaSisDaDaDa_HuFaSisDaDaDaDa_HuFaSisDaDaDaSo_HuFaSisDaDaSo_HuFaSisDaDaSoDa_HuFaSisDaDaSoSo_HuFaSisDaSoDa_HuFaSisDaSoDaDa_HuFaSisDaSoDaSo_HuFaSisDaSoSo_HuFaSisDaSoSoDa_HuFaSisDaSoSoSo_HuFaSisSoDaDa_HuFaSisSoDaDaDa_HuFaSisSoDaDaSo_HuFaSisSoDaSo_HuFaSisSoDaSoDa_HuFaSisSoDaSoSo_HuFaSisSoSoDa_HuFaSisSoSoDaDa_HuFaSisSoSoDaSo_HuFaSisSoSoSo_HuFaSisSoSoSoDa_HuFaSisSoSoSoSo_HuMoBroDaDaDa_HuMoBroDaDaDaDa_HuMoBroDaDaDaSo_HuMoBroDaDaSo_HuMoBroDaDaSoDa_HuMoBroDaDaSoSo_HuMoBroDaSoDa_HuMoBroDaSoDaDa_HuMoBroDaSoDaSo_HuMoBroDaSoSo_HuMoBroDaSoSoDa_HuMoBroDaSoSoSo_HuMoBroSoDaDa_HuMoBroSoDaDaDa_HuMoBroSoDaDaSo_HuMoBroSoDaSo_HuMoBroSoDaSoDa_HuMoBroSoDaSoSo_HuMoBroSoSoDa_HuMoBroSoSoDaDa_HuMoBroSoSoDaSo_HuMoBroSoSoSo_HuMoBroSoSoSoDa_HuMoBroSoSoSoSo_HuMoSisDaDaDa_HuMoSisDaDaDaDa_HuMoSisDaDaDaSo_HuMoSisDaDaSo_HuMoSisDaDaSoDa_HuMoSisDaDaSoSo_HuMoSisDaSoDa_HuMoSisDaSoDaDa_HuMoSisDaSoDaSo_HuMoSisDaSoSo_HuMoSisDaSoSoDa_HuMoSisDaSoSoSo_HuMoSisSoDaDa_HuMoSisSoDaDaDa_HuMoSisSoDaDaSo_HuMoSisSoDaSo_HuMoSisSoDaSoDa_HuMoSisSoDaSoSo_HuMoSisSoSoDa_HuMoSisSoSoDaDa_HuMoSisSoSoDaSo_HuMoSisSoSoSo_HuMoSisSoSoSoDa_HuMoSisSoSoSoSo_HuSisDaDa_HuSisDaDaDa_HuSisDaDaSo_HuSisDaSo_HuSisDaSoDa_HuSisDaSoSo_HuSisSoDa_HuSisSoDaDa_HuSisSoDaSo_HuSisSoSo_HuSisSoSoDa_HuSisSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoFa_MoFaBro_MoFaBroDaDaDaDa_MoFaBroDaDaDaSo_MoFaBroDaDaSoDa_MoFaBroDaDaSoSo_MoFaBroDaSoDaDa_MoFaBroDaSoDaSo_MoFaBroDaSoSoDa_MoFaBroDaSoSoSo_MoFaBroSoDaDaDa_MoFaBroSoDaDaSo_MoFaBroSoDaSoDa_MoFaBroSoDaSoSo_MoFaBroSoSoDaDa_MoFaBroSoSoDaSo_MoFaBroSoSoSoDa_MoFaBroSoSoSoSo_MoFaFa_MoFaFaBro_MoFaFaSis_MoFaMo_MoFaMoBro_MoFaMoSis_MoFaSis_MoFaSisDaDaDaDa_MoFaSisDaDaDaSo_MoFaSisDaDaSoDa_MoFaSisDaDaSoSo_MoFaSisDaSoDaDa_MoFaSisDaSoDaSo_MoFaSisDaSoSoDa_MoFaSisDaSoSoSo_MoFaSisSoDaDaDa_MoFaSisSoDaDaSo_MoFaSisSoDaSoDa_MoFaSisSoDaSoSo_MoFaSisSoSoDaDa_MoFaSisSoSoDaSo_MoFaSisSoSoSoDa_MoFaSisSoSoSoSo_MoMo_MoMoBro_MoMoBroDaDaDaDa_MoMoBroDaDaDaSo_MoMoBroDaDaSoDa_MoMoBroDaDaSoSo_MoMoBroDaSoDaDa_MoMoBroDaSoDaSo_MoMoBroDaSoSoDa_MoMoBroDaSoSoSo_MoMoBroSoDaDaDa_MoMoBroSoDaDaSo_MoMoBroSoDaSoDa_MoMoBroSoDaSoSo_MoMoBroSoSoDaDa_MoMoBroSoSoDaSo_MoMoBroSoSoSoDa_MoMoBroSoSoSoSo_MoMoFa_MoMoFaBro_MoMoFaSis_MoMoMo_MoMoMoBro_MoMoMoSis_MoMoSis_MoMoSisDaDaDaDa_MoMoSisDaDaDaSo_MoMoSisDaDaSoDa_MoMoSisDaDaSoSo_MoMoSisDaSoDaDa_MoMoSisDaSoDaSo_MoMoSisDaSoSoDa_MoMoSisDaSoSoSo_MoMoSisSoDaDaDa_MoMoSisSoDaDaSo_MoMoSisSoDaSoDa_MoMoSisSoDaSoSo_MoMoSisSoSoDaDa_MoMoSisSoSoDaSo_MoMoSisSoSoSoDa_MoMoSisSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo_SoDa_SoDaDa_SoDaSo_SoSo_SoSoDa_SoSoSo_WiBroDaDa_WiBroDaDaDa_WiBroDaDaSo_WiBroDaSo_WiBroDaSoDa_WiBroDaSoSo_WiBroSoDa_WiBroSoDaDa_WiBroSoDaSo_WiBroSoSo_WiBroSoSoDa_WiBroSoSoSo_WiFaBroDaDaDa_WiFaBroDaDaDaDa_WiFaBroDaDaDaSo_WiFaBroDaDaSo_WiFaBroDaDaSoDa_WiFaBroDaDaSoSo_WiFaBroDaSoDa_WiFaBroDaSoDaDa_WiFaBroDaSoDaSo_WiFaBroDaSoSo_WiFaBroDaSoSoDa_WiFaBroDaSoSoSo_WiFaBroSoDaDa_WiFaBroSoDaDaDa_WiFaBroSoDaDaSo_WiFaBroSoDaSo_WiFaBroSoDaSoDa_WiFaBroSoDaSoSo_WiFaBroSoSoDa_WiFaBroSoSoDaDa_WiFaBroSoSoDaSo_WiFaBroSoSoSo_WiFaBroSoSoSoDa_WiFaBroSoSoSoSo_WiFaSisDaDaDa_WiFaSisDaDaDaDa_WiFaSisDaDaDaSo_WiFaSisDaDaSo_WiFaSisDaDaSoDa_WiFaSisDaDaSoSo_WiFaSisDaSoDa_WiFaSisDaSoDaDa_WiFaSisDaSoDaSo_WiFaSisDaSoSo_WiFaSisDaSoSoDa_WiFaSisDaSoSoSo_WiFaSisSoDaDa_WiFaSisSoDaDaDa_WiFaSisSoDaDaSo_WiFaSisSoDaSo_WiFaSisSoDaSoDa_WiFaSisSoDaSoSo_WiFaSisSoSoDa_WiFaSisSoSoDaDa_WiFaSisSoSoDaSo_WiFaSisSoSoSo_WiFaSisSoSoSoDa_WiFaSisSoSoSoSo_WiMoBroDaDaDa_WiMoBroDaDaDaDa_WiMoBroDaDaDaSo_WiMoBroDaDaSo_WiMoBroDaDaSoDa_WiMoBroDaDaSoSo_WiMoBroDaSoDa_WiMoBroDaSoDaDa_WiMoBroDaSoDaSo_WiMoBroDaSoSo_WiMoBroDaSoSoDa_WiMoBroDaSoSoSo_WiMoBroSoDaDa_WiMoBroSoDaDaDa_WiMoBroSoDaDaSo_WiMoBroSoDaSo_WiMoBroSoDaSoDa_WiMoBroSoDaSoSo_WiMoBroSoSoDa_WiMoBroSoSoDaDa_WiMoBroSoSoDaSo_WiMoBroSoSoSo_WiMoBroSoSoSoDa_WiMoBroSoSoSoSo_WiMoSisDaDaDa_WiMoSisDaDaDaDa_WiMoSisDaDaDaSo_WiMoSisDaDaSo_WiMoSisDaDaSoDa_WiMoSisDaDaSoSo_WiMoSisDaSoDa_WiMoSisDaSoDaDa_WiMoSisDaSoDaSo_WiMoSisDaSoSo_WiMoSisDaSoSoDa_WiMoSisDaSoSoSo_WiMoSisSoDaDa_WiMoSisSoDaDaDa_WiMoSisSoDaDaSo_WiMoSisSoDaSo_WiMoSisSoDaSoDa_WiMoSisSoDaSoSo_WiMoSisSoSoDa_WiMoSisSoSoDaDa_WiMoSisSoSoDaSo_WiMoSisSoSoSo_WiMoSisSoSoSoDa_WiMoSisSoSoSoSo_WiSisDaDa_WiSisDaDaDa_WiSisDaDaSo_WiSisDaSo_WiSisDaSoDa_WiSisDaSoSo_WiSisSoDa_WiSisSoDaDa_WiSisSoDaSo_WiSisSoSo_WiSisSoSoDa_WiSisSoSoSo"}
;; 0
%apo:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%apo:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%apo:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%apo:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%apo:1, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 5
%apo:1, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%apo:1, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%apo:1, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 8
%apo:1, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%apo:1, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%apo:1, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%apo:1, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%apo:2, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 13
%apo:2, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 14
%apo:2, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 15
%apo:2, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 16
%apo:2, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 17
%apo:2, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 18
%apo:2, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 19
%apo:2, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 20
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 21
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 23
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 26
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 27
%apo:2, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 28
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 29
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 30
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 31
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 33
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 34
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 35
%apo:2, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 36
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 37
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 38
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 39
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 40
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 41
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 42
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 43
%apo:2, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 44
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 45
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 46
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 47
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 48
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 49
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 50
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 51
%apo:2, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 52
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 53
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 54
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 55
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 56
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 57
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 58
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 59
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 60
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 61
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 62
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 63
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 64
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 65
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 66
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 67
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 68
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 69
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 70
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 71
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 72
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 73
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 74
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 75
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 76
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 77
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 78
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 79
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 80
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 81
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 82
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 83
%apo:2, aneng:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 84
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 85
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 86
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 87
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 88
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 89
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 90
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 91
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 92
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 93
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 94
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 95
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 96
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 97
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 98
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 99
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 101
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 102
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 103
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 104
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 105
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 106
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 107
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisSoDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 108
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 109
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 110
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 111
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 113
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 114
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 115
%apo:2, aneng:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaSisDaDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 116
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 117
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 118
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 119
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 120
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 121
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 122
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 123
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 124
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 125
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 126
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 127
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 130
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 131
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoBroDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 132
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 133
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 134
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 135
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 136
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 137
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 138
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 139
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 140
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 141
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 142
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 143
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 144
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 145
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 146
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 147
%apo:2, aneng:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisDaDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 148
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 149
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 150
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 151
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 152
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 153
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 154
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 155
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 156
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 157
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 158
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 159
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 160
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 161
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 162
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 163
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 164
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 165
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 166
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 167
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 168
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 169
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 170
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 171
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisSoDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 172
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 173
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 174
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 175
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 176
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 177
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 178
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 179
%apo:2, aneng:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaSisDaDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 180
%apo:2, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 181
%apo:2, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 182
%apo:2, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 183
%apo:2, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 184
%apo:2, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 185
%apo:2, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 186
%apo:2, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 187
%apo:2, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 188
%apo:2, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 189
%apo:2, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 190
%apo:2, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 191
%apo:2, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 192
%apo:2, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 193
%apo:2, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 194
%apo:2, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 195
%apo:2, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 196
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 197
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 198
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 199
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 200
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 201
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 202
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 203
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 204
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 205
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 206
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 207
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 208
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 209
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 210
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 211
%apo:2, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 212
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 213
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 214
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 215
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 216
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 217
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 218
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 219
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 220
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 221
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 222
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 223
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 224
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 225
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 226
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 227
%apo:2, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 228
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 229
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 230
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 231
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 232
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 233
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 234
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 235
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 236
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 237
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 238
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 239
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 240
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 241
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 242
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 243
%apo:2, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 244
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 245
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 246
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 247
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 248
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 249
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 250
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 251
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 252
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 253
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 254
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 255
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 256
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 257
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 258
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 259
%apo:2, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 260
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 261
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 262
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 263
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 264
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 265
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 266
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 267
%apo:3, aneng:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 268
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 269
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 270
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 271
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 272
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 273
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 274
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 275
%apo:3, aneng:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 276
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 277
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 278
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 279
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 280
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 281
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 282
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 283
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 284
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 285
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 286
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 287
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 288
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 289
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 290
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 291
%apo:3, aneng:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 292
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 293
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 294
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 295
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 296
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 297
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 298
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 299
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 300
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 301
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 302
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 303
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 304
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 305
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 306
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 307
%apo:3, aneng:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 308
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 309
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 310
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 311
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 312
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 313
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 314
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 315
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 316
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 317
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 318
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 319
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 320
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 321
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 322
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 323
%apo:3, aneng:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 324
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 325
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 326
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 327
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 328
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 329
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 330
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 331
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 332
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 333
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 334
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 335
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 336
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 337
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 338
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 339
%apo:3, aneng:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 340
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 341
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 342
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 343
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 344
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 345
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 346
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 347
%apo:3, aneng:2, spice:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 348
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 349
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 350
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 351
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 352
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 353
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 354
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 355
%apo:3, aneng:2, spice:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 356
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 357
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 358
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 359
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 360
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 361
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 362
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 363
%apo:3, aneng:2, spice:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 364
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 365
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 366
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 367
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 368
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 369
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 370
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 371
%apo:3, aneng:2, spice:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 372
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 373
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 374
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 375
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 376
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 377
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 378
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 379
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 380
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 381
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 382
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 383
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 384
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 385
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 386
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 387
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 388
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 389
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 390
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 391
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 392
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 393
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 394
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 395
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 396
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 397
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 398
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 399
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 400
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 401
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 402
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 403
%apo:3, aneng:3, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 404
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 405
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 406
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 407
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 408
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 409
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 410
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 411
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 412
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 413
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 414
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 415
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 416
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 417
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 418
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 419
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 420
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 421
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 422
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 423
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 424
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 425
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 426
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 427
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 428
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 429
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 430
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 431
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 432
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 433
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 434
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 435
%apo:3, aneng:3, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 436
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 437
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 438
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 439
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 440
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 441
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 442
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 443
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 444
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 445
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 446
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 447
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 448
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 449
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 450
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 451
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 452
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 453
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 454
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 455
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 456
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 457
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 458
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 459
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 460
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 461
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 462
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 463
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 464
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 465
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 466
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 467
%apo:3, aneng:3, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 468
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 469
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 470
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 471
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 472
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 473
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 474
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 475
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 476
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 477
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 478
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 479
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 480
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 481
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 482
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 483
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 484
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 485
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 486
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 487
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 488
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 489
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 490
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 491
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 492
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 493
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 494
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 495
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 496
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 497
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 498
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 499
%apo:3, aneng:3, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 500
%apo:4, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 501
%apo:4, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 502
%apo:4, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 503
%apo:4, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 504
%apo:5, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 505
%apo:5, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 506
%apo:5, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 507
%apo:5, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 508
%apo:5, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 509
%apo:5, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 510
%apo:5, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 511
%apo:5, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 512
%apo:6, parents:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 513
%apo:6, parents:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 514
%apo:6, parents:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 515
%apo:6, parents:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 516
%apo:6, parents:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 517
%apo:6, parents:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 518
%apo:6, parents:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 519
%apo:6, parents:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 520
%apo:7, parents:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 521
%apo:7, parents:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 522
%apo:7, parents:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 523
%apo:7, parents:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 524
%apo:7, parents:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 525
%apo:7, parents:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 526
%apo:7, parents:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 527
%apo:7, parents:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 528
%apo:7, parents:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 529
%apo:7, parents:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 530
%apo:7, parents:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 531
%apo:7, parents:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 532
%apo:7, parents:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 533
%apo:7, parents:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 534
%apo:7, parents:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 535
%apo:7, parents:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


asawa(Alter, Ego) :-  spice(Alter, Ego).
{"Hu_Wi"}
;; 0
%asawa:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%asawa:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


balai(Alter, Ego) :-  children(A, Ego), spouse(B, A), parents(Alter, B).
                  |   children(A, Ego), spouse(B, A), parents(C, B), siblings(Alter, C).
                  |   children(A, Ego), spouse(B, A), parents(C, B), parents(Alter, C).
                  |   children(A, Ego), spouse(B, A), parents(C, B), parents(D, C), siblings(Alter, D).
                  |   children(A, Ego), spouse(B, A), parents(C, B), parents(D, C), parents(Alter, D).
                  |   children(A, Ego), spouse(B, A), siblings(Alter, B).
                  |   children(A, Ego), spouse(B, A), siblings(C, B), children(Alter, C).
                  |   siblings(A, Ego), spouse(B, A), parents(Alter, B).
{"BroWiFa_BroWiMo_DaHuBro_DaHuBroDa_DaHuBroSo_DaHuFa_DaHuFaBro_DaHuFaFa_DaHuFaFaBro_DaHuFaFaFa_DaHuFaFaMo_DaHuFaFaSis_DaHuFaMo_DaHuFaMoBro_DaHuFaMoFa_DaHuFaMoMo_DaHuFaMoSis_DaHuFaSis_DaHuMo_DaHuMoBro_DaHuMoFa_DaHuMoFaBro_DaHuMoFaFa_DaHuMoFaMo_DaHuMoFaSis_DaHuMoMo_DaHuMoMoBro_DaHuMoMoFa_DaHuMoMoMo_DaHuMoMoSis_DaHuMoSis_DaHuSis_DaHuSisDa_DaHuSisSo_SisHuFa_SisHuMo_SoWiBro_SoWiBroDa_SoWiBroSo_SoWiFa_SoWiFaBro_SoWiFaFa_SoWiFaFaBro_SoWiFaFaFa_SoWiFaFaMo_SoWiFaFaSis_SoWiFaMo_SoWiFaMoBro_SoWiFaMoFa_SoWiFaMoMo_SoWiFaMoSis_SoWiFaSis_SoWiMo_SoWiMoBro_SoWiMoFa_SoWiMoFaBro_SoWiMoFaFa_SoWiMoFaMo_SoWiMoFaSis_SoWiMoMo_SoWiMoMoBro_SoWiMoMoFa_SoWiMoMoMo_SoWiMoMoSis_SoWiMoSis_SoWiSis_SoWiSisDa_SoWiSisSo"}
;; 0
%balai:0, children:0, parents:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiMo}  
 son(A, Ego), spouse(B, A), mother(Alter, B).
;; 1
%balai:0, children:0, parents:1%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiFa}  
 son(A, Ego), spouse(B, A), father(Alter, B).
;; 2
%balai:0, children:1, parents:0%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuMo}  
 daughter(A, Ego), spouse(B, A), mother(Alter, B).
;; 3
%balai:0, children:1, parents:1%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuFa}  
 daughter(A, Ego), spouse(B, A), father(Alter, B).
;; 4
%balai:1, children:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {SoWiMoBro}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 5
%balai:1, children:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {SoWiMoSis}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 6
%balai:1, children:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {SoWiFaBro}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 7
%balai:1, children:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {SoWiFaSis}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 8
%balai:1, children:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {DaHuMoBro}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%balai:1, children:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {DaHuMoSis}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%balai:1, children:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {DaHuFaBro}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%balai:1, children:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {DaHuFaSis}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 12
%balai:2, children:0, parents:0, parents:0%
 Lvl=1,  PC=3, S=1, Star=0,  {SoWiMoMo}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(Alter, C).
;; 13
%balai:2, children:0, parents:0, parents:1%
 Lvl=1,  PC=3, S=1, Star=0,  {SoWiMoFa}  
 son(A, Ego), spouse(B, A), mother(C, B), father(Alter, C).
;; 14
%balai:2, children:0, parents:1, parents:0%
 Lvl=1,  PC=3, S=1, Star=0,  {SoWiFaMo}  
 son(A, Ego), spouse(B, A), father(C, B), mother(Alter, C).
;; 15
%balai:2, children:0, parents:1, parents:1%
 Lvl=1,  PC=3, S=1, Star=0,  {SoWiFaFa}  
 son(A, Ego), spouse(B, A), father(C, B), father(Alter, C).
;; 16
%balai:2, children:1, parents:0, parents:0%
 Lvl=1,  PC=3, S=1, Star=0,  {DaHuMoMo}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(Alter, C).
;; 17
%balai:2, children:1, parents:0, parents:1%
 Lvl=1,  PC=3, S=1, Star=0,  {DaHuMoFa}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(Alter, C).
;; 18
%balai:2, children:1, parents:1, parents:0%
 Lvl=1,  PC=3, S=1, Star=0,  {DaHuFaMo}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(Alter, C).
;; 19
%balai:2, children:1, parents:1, parents:1%
 Lvl=1,  PC=3, S=1, Star=0,  {DaHuFaFa}  
 daughter(A, Ego), spouse(B, A), father(C, B), father(Alter, C).
;; 20
%balai:3, children:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiMoMoBro}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 21
%balai:3, children:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiMoMoSis}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 22
%balai:3, children:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiMoFaBro}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 23
%balai:3, children:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiMoFaSis}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 24
%balai:3, children:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiFaMoBro}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 25
%balai:3, children:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiFaMoSis}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 26
%balai:3, children:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiFaFaBro}  
 son(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 27
%balai:3, children:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {SoWiFaFaSis}  
 son(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 28
%balai:3, children:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuMoMoBro}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 29
%balai:3, children:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuMoMoSis}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 30
%balai:3, children:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuMoFaBro}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 31
%balai:3, children:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuMoFaSis}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 32
%balai:3, children:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuFaMoBro}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 33
%balai:3, children:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuFaMoSis}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 34
%balai:3, children:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuFaFaBro}  
 daughter(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 35
%balai:3, children:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {DaHuFaFaSis}  
 daughter(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 36
%balai:4, children:0, parents:0, parents:0, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiMoMoMo}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(Alter, D).
;; 37
%balai:4, children:0, parents:0, parents:0, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiMoMoFa}  
 son(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 38
%balai:4, children:0, parents:0, parents:1, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiMoFaMo}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(Alter, D).
;; 39
%balai:4, children:0, parents:0, parents:1, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiMoFaFa}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 40
%balai:4, children:0, parents:1, parents:0, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiFaMoMo}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(Alter, D).
;; 41
%balai:4, children:0, parents:1, parents:0, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiFaMoFa}  
 son(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 42
%balai:4, children:0, parents:1, parents:1, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiFaFaMo}  
 son(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(Alter, D).
;; 43
%balai:4, children:0, parents:1, parents:1, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {SoWiFaFaFa}  
 son(A, Ego), spouse(B, A), father(C, B), father(D, C), father(Alter, D).
;; 44
%balai:4, children:1, parents:0, parents:0, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuMoMoMo}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), mother(Alter, D).
;; 45
%balai:4, children:1, parents:0, parents:0, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuMoMoFa}  
 daughter(A, Ego), spouse(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 46
%balai:4, children:1, parents:0, parents:1, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuMoFaMo}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, C), mother(Alter, D).
;; 47
%balai:4, children:1, parents:0, parents:1, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuMoFaFa}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 48
%balai:4, children:1, parents:1, parents:0, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuFaMoMo}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), mother(Alter, D).
;; 49
%balai:4, children:1, parents:1, parents:0, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuFaMoFa}  
 daughter(A, Ego), spouse(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 50
%balai:4, children:1, parents:1, parents:1, parents:0%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuFaFaMo}  
 daughter(A, Ego), spouse(B, A), father(C, B), father(D, C), mother(Alter, D).
;; 51
%balai:4, children:1, parents:1, parents:1, parents:1%
 Lvl=2,  PC=4, S=1, Star=0,  {DaHuFaFaFa}  
 daughter(A, Ego), spouse(B, A), father(C, B), father(D, C), father(Alter, D).
;; 52
%balai:5, children:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SoWiBro}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 53
%balai:5, children:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SoWiSis}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 54
%balai:5, children:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuBro}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 55
%balai:5, children:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuSis}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 56
%balai:6, children:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiBroSo}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 57
%balai:6, children:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiBroDa}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 58
%balai:6, children:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiSisSo}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 59
%balai:6, children:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {SoWiSisDa}  
 son(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 60
%balai:6, children:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuBroSo}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 61
%balai:6, children:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuBroDa}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 62
%balai:6, children:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuSisSo}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 63
%balai:6, children:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuSisDa}  
 daughter(A, Ego), spouse(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 64
%balai:7, siblings:0, brother:0, sibling:0, parents:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiMo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(D, C), mother(Alter, D).
;; 65
%balai:7, siblings:0, brother:0, sibling:0, parents:1%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiFa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(D, C), father(Alter, D).
;; 66
%balai:7, siblings:1, sister:0, sibling:0, parents:0%
 Lvl=1,  PC=5, S=1, Star=0,  {SisHuMo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(D, C), mother(Alter, D).
;; 67
%balai:7, siblings:1, sister:0, sibling:0, parents:1%
 Lvl=1,  PC=5, S=1, Star=0,  {SisHuFa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(D, C), father(Alter, D).


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


dada(Alter, Ego) :-  parents(A, Ego), sibling(Alter, A), female(Alter).
                 |   parents(A, Ego), brother(B, A), wife(Alter, B).
                 |   parents(A, Ego), parents(B, A), siblings(C, B), daughter(Alter, C).
                 |   parents(A, Ego), parents(B, A), siblings(C, B), son(D, C), wife(Alter, D).
{"FaBroWi_FaFaBroDa_FaFaBroSoWi_FaFaSisDa_FaFaSisSoWi_FaMoBroDa_FaMoBroSoWi_FaMoSisDa_FaMoSisSoWi_FaSis_MoBroWi_MoFaBroDa_MoFaBroSoWi_MoFaSisDa_MoFaSisSoWi_MoMoBroDa_MoMoBroSoWi_MoMoSisDa_MoMoSisSoWi_MoSis"}
;; 0
%dada:0, parents:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%dada:0, parents:1, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%dada:1, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 3
%dada:1, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 4
%dada:2, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 5
%dada:2, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 6
%dada:2, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 7
%dada:2, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 8
%dada:2, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 9
%dada:2, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 10
%dada:2, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 11
%dada:2, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 12
%dada:3, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 13
%dada:3, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 14
%dada:3, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 15
%dada:3, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 16
%dada:3, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 17
%dada:3, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).
;; 18
%dada:3, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), wife(Alter, F).
;; 19
%dada:3, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), wife(Alter, F).


generation[aux]01(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]01(B, A), child(Alter, B).
;; 0
%generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


generation[aux]01junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]01junior(B, A), child(Alter, B).
;; 0
%generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]01junior:1, parents:0, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]01junior:1, parents:0, generation[aux]01junior:1, parents:0, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]01junior:1, parents:0, generation[aux]01junior:1, parents:1, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]01junior:1, parents:1, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]01junior:1, parents:1, generation[aux]01junior:1, parents:0, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]01junior:1, parents:1, generation[aux]01junior:1, parents:1, generation[aux]01junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]01senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]01senior(B, A), child(Alter, B).
;; 0
%generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]01senior:1, parents:0, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]01senior:1, parents:0, generation[aux]01senior:1, parents:0, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]01senior:1, parents:0, generation[aux]01senior:1, parents:1, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]01senior:1, parents:1, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]01senior:1, parents:1, generation[aux]01senior:1, parents:0, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]01senior:1, parents:1, generation[aux]01senior:1, parents:1, generation[aux]01senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


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


idas(Alter, Ego) :-  spice(A, Ego), siblings(B, A), spouse(Alter, B).
                 |   spice(A, Ego), pensan(B, A), spouse(Alter, B).
{"HuBroWi_HuFaBroDaHu_HuFaBroSoWi_HuFaFaBroDaDaHu_HuFaFaBroDaSoWi_HuFaFaBroSoDaHu_HuFaFaBroSoSoWi_HuFaFaSisDaDaHu_HuFaFaSisDaSoWi_HuFaFaSisSoDaHu_HuFaFaSisSoSoWi_HuFaMoBroDaDaHu_HuFaMoBroDaSoWi_HuFaMoBroSoDaHu_HuFaMoBroSoSoWi_HuFaMoSisDaDaHu_HuFaMoSisDaSoWi_HuFaMoSisSoDaHu_HuFaMoSisSoSoWi_HuFaSisDaHu_HuFaSisSoWi_HuMoBroDaHu_HuMoBroSoWi_HuMoFaBroDaDaHu_HuMoFaBroDaSoWi_HuMoFaBroSoDaHu_HuMoFaBroSoSoWi_HuMoFaSisDaDaHu_HuMoFaSisDaSoWi_HuMoFaSisSoDaHu_HuMoFaSisSoSoWi_HuMoMoBroDaDaHu_HuMoMoBroDaSoWi_HuMoMoBroSoDaHu_HuMoMoBroSoSoWi_HuMoMoSisDaDaHu_HuMoMoSisDaSoWi_HuMoMoSisSoDaHu_HuMoMoSisSoSoWi_HuMoSisDaHu_HuMoSisSoWi_HuSisHu_WiBroWi_WiFaBroDaHu_WiFaBroSoWi_WiFaFaBroDaDaHu_WiFaFaBroDaSoWi_WiFaFaBroSoDaHu_WiFaFaBroSoSoWi_WiFaFaSisDaDaHu_WiFaFaSisDaSoWi_WiFaFaSisSoDaHu_WiFaFaSisSoSoWi_WiFaMoBroDaDaHu_WiFaMoBroDaSoWi_WiFaMoBroSoDaHu_WiFaMoBroSoSoWi_WiFaMoSisDaDaHu_WiFaMoSisDaSoWi_WiFaMoSisSoDaHu_WiFaMoSisSoSoWi_WiFaSisDaHu_WiFaSisSoWi_WiMoBroDaHu_WiMoBroSoWi_WiMoFaBroDaDaHu_WiMoFaBroDaSoWi_WiMoFaBroSoDaHu_WiMoFaBroSoSoWi_WiMoFaSisDaDaHu_WiMoFaSisDaSoWi_WiMoFaSisSoDaHu_WiMoFaSisSoSoWi_WiMoMoBroDaDaHu_WiMoMoBroDaSoWi_WiMoMoBroSoDaHu_WiMoMoBroSoSoWi_WiMoMoSisDaDaHu_WiMoMoSisDaSoWi_WiMoMoSisSoDaHu_WiMoMoSisSoSoWi_WiMoSisDaHu_WiMoSisSoWi_WiSisHu"}
;; 0
%idas:0, spice:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), spouse(Alter, D).
;; 1
%idas:0, spice:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), spouse(Alter, D).
;; 2
%idas:0, spice:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), spouse(Alter, D).
;; 3
%idas:0, spice:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), spouse(Alter, D).
;; 4
%idas:1, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), spouse(Alter, F).
;; 5
%idas:1, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), spouse(Alter, F).
;; 6
%idas:1, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), spouse(Alter, F).
;; 7
%idas:1, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), spouse(Alter, F).
;; 8
%idas:1, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), spouse(Alter, F).
;; 9
%idas:1, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), spouse(Alter, F).
;; 10
%idas:1, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), spouse(Alter, F).
;; 11
%idas:1, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), spouse(Alter, F).
;; 12
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 13
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 14
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 15
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 16
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 17
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 18
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 19
%idas:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 20
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 21
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 22
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 23
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 24
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 25
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 26
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 27
%idas:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 28
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 29
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 30
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 31
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 32
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 33
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 34
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 35
%idas:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 36
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 37
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 38
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 39
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 40
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 41
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 42
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 43
%idas:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 44
%idas:1, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), spouse(Alter, F).
;; 45
%idas:1, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), spouse(Alter, F).
;; 46
%idas:1, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), spouse(Alter, F).
;; 47
%idas:1, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), spouse(Alter, F).
;; 48
%idas:1, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), spouse(Alter, F).
;; 49
%idas:1, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), spouse(Alter, F).
;; 50
%idas:1, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), spouse(Alter, F).
;; 51
%idas:1, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), spouse(Alter, F).
;; 52
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 53
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 54
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 55
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 56
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisSoSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 57
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 58
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisDaSoWi}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 59
%idas:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 60
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 61
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 62
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 63
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 64
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisSoSoWi}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 65
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 66
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisDaSoWi}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 67
%idas:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 68
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 69
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 70
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 71
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 72
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisSoSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 73
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 74
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisDaSoWi}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 75
%idas:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 76
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroSoSoWi}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), spouse(Alter, H).
;; 77
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroSoDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 78
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroDaSoWi}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 79
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroDaDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 80
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisSoSoWi}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), spouse(Alter, H).
;; 81
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisSoDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), spouse(Alter, H).
;; 82
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisDaSoWi}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), spouse(Alter, H).
;; 83
%idas:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisDaDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), spouse(Alter, H).


ina(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%ina:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


kayong(Alter, Ego) :-  spice(A, Ego), siblings(Alter, A).
                   |   spice(A, Ego), pensan(Alter, A).
                   |   spouse(A, Alter), siblings(A, Ego).
                   |   spouse(A, Alter), pensan(A, Ego).
{"BroWi_FaBroDaHu_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDaHu_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDaHu_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDaHu_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDaHu_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_HuBro_HuFaBroDa_HuFaBroSo_HuFaFaBroDaDa_HuFaFaBroDaSo_HuFaFaBroSoDa_HuFaFaBroSoSo_HuFaFaSisDaDa_HuFaFaSisDaSo_HuFaFaSisSoDa_HuFaFaSisSoSo_HuFaMoBroDaDa_HuFaMoBroDaSo_HuFaMoBroSoDa_HuFaMoBroSoSo_HuFaMoSisDaDa_HuFaMoSisDaSo_HuFaMoSisSoDa_HuFaMoSisSoSo_HuFaSisDa_HuFaSisSo_HuMoBroDa_HuMoBroSo_HuMoFaBroDaDa_HuMoFaBroDaSo_HuMoFaBroSoDa_HuMoFaBroSoSo_HuMoFaSisDaDa_HuMoFaSisDaSo_HuMoFaSisSoDa_HuMoFaSisSoSo_HuMoMoBroDaDa_HuMoMoBroDaSo_HuMoMoBroSoDa_HuMoMoBroSoSo_HuMoMoSisDaDa_HuMoMoSisDaSo_HuMoMoSisSoDa_HuMoMoSisSoSo_HuMoSisDa_HuMoSisSo_HuSis_MoBroDaHu_MoBroSoWi_MoFaBroDaDaHu_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDaHu_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDaHu_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiBro_WiFaBroDa_WiFaBroSo_WiFaFaBroDaDa_WiFaFaBroDaSo_WiFaFaBroSoDa_WiFaFaBroSoSo_WiFaFaSisDaDa_WiFaFaSisDaSo_WiFaFaSisSoDa_WiFaFaSisSoSo_WiFaMoBroDaDa_WiFaMoBroDaSo_WiFaMoBroSoDa_WiFaMoBroSoSo_WiFaMoSisDaDa_WiFaMoSisDaSo_WiFaMoSisSoDa_WiFaMoSisSoSo_WiFaSisDa_WiFaSisSo_WiMoBroDa_WiMoBroSo_WiMoFaBroDaDa_WiMoFaBroDaSo_WiMoFaBroSoDa_WiMoFaBroSoSo_WiMoFaSisDaDa_WiMoFaSisDaSo_WiMoFaSisSoDa_WiMoFaSisSoSo_WiMoMoBroDaDa_WiMoMoBroDaSo_WiMoMoBroSoDa_WiMoMoBroSoSo_WiMoMoSisDaDa_WiMoMoSisDaSo_WiMoMoSisSoDa_WiMoMoSisSoSo_WiMoSisDa_WiMoSisSo_WiSis"}
;; 0
%kayong:0, spice:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%kayong:0, spice:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%kayong:0, spice:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%kayong:0, spice:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 4
%kayong:1, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 5
%kayong:1, spice:0, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%kayong:1, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 7
%kayong:1, spice:0, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 8
%kayong:1, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 9
%kayong:1, spice:0, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%kayong:1, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%kayong:1, spice:0, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 12
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 13
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 14
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 15
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 16
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 17
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 18
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 19
%kayong:1, spice:0, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 20
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 21
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 22
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 23
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 24
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 25
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 26
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 27
%kayong:1, spice:0, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 28
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 29
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 30
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 31
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 32
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 33
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 34
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 35
%kayong:1, spice:0, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 36
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 37
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 38
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 39
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 40
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 41
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 42
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 43
%kayong:1, spice:0, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 44
%kayong:1, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 45
%kayong:1, spice:1, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 46
%kayong:1, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 47
%kayong:1, spice:1, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 48
%kayong:1, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 49
%kayong:1, spice:1, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 50
%kayong:1, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 51
%kayong:1, spice:1, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 52
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 53
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 54
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 55
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 56
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 57
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 58
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 59
%kayong:1, spice:1, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 60
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 61
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 62
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 63
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 64
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 65
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 66
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 67
%kayong:1, spice:1, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 68
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 69
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 70
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 71
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 72
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 73
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 74
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 75
%kayong:1, spice:1, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 76
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 77
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G).
;; 78
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 79
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G).
;; 80
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 81
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 82
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaSo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 83
%kayong:1, spice:1, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 84
%kayong:2, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 spouse(A, Alter), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), male(A).
;; 85
%kayong:2, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 spouse(A, Alter), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), female(A).
;; 86
%kayong:3, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(A, E).
;; 87
%kayong:3, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(A, E).
;; 88
%kayong:3, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(A, E).
;; 89
%kayong:3, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(A, E).
;; 90
%kayong:3, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(A, E).
;; 91
%kayong:3, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(A, E).
;; 92
%kayong:3, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(A, E).
;; 93
%kayong:3, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(A, E).
;; 94
%kayong:3, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(A, G).
;; 95
%kayong:3, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(A, G).
;; 96
%kayong:3, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(A, G).
;; 97
%kayong:3, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(A, G).
;; 98
%kayong:3, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(A, G).
;; 99
%kayong:3, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(A, G).
;; 100
%kayong:3, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(A, G).
;; 101
%kayong:3, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
 spouse(A, Alter), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(A, G).
;; 102
%kayong:3, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(A, G).
;; 103
%kayong:3, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(A, G).
;; 104
%kayong:3, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(A, G).
;; 105
%kayong:3, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(A, G).
;; 106
%kayong:3, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(A, G).
;; 107
%kayong:3, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(A, G).
;; 108
%kayong:3, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(A, G).
;; 109
%kayong:3, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
 spouse(A, Alter), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(A, G).
;; 110
%kayong:3, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(A, G).
;; 111
%kayong:3, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(A, G).
;; 112
%kayong:3, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(A, G).
;; 113
%kayong:3, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(A, G).
;; 114
%kayong:3, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(A, G).
;; 115
%kayong:3, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(A, G).
;; 116
%kayong:3, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(A, G).
;; 117
%kayong:3, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
 spouse(A, Alter), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(A, G).
;; 118
%kayong:3, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(A, G).
;; 119
%kayong:3, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(A, G).
;; 120
%kayong:3, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(A, G).
;; 121
%kayong:3, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(A, G).
;; 122
%kayong:3, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(A, G).
;; 123
%kayong:3, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(A, G).
;; 124
%kayong:3, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(A, G).
;; 125
%kayong:3, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
 spouse(A, Alter), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(A, G).


manugeng(Alter, Ego) :-  spice(A, Ego), parents(B, A), siblings(Alter, B).
                     |   spice(A, Ego), parents(Alter, A).
                     |   spice(A, Ego), parents(B, A), parents(Alter, B).
                     |   spice(A, Ego), parents(B, A), parents(C, B), siblings(Alter, C).
                     |   children(A, Ego), spouse(Alter, A).
                     |   children(A, Ego), children(B, A), spouse(Alter, B).
                     |   siblings(A, Ego), children(B, A), spouse(Alter, B).
                     |   pensan(A, Ego), children(B, A), spouse(Alter, B).
{"BroDaHu_BroSoWi_DaDaHu_DaHu_DaSoWi_FaBroDaDaHu_FaBroDaSoWi_FaBroSoDaHu_FaBroSoSoWi_FaFaBroDaDaDaHu_FaFaBroDaDaSoWi_FaFaBroDaSoDaHu_FaFaBroDaSoSoWi_FaFaBroSoDaDaHu_FaFaBroSoDaSoWi_FaFaBroSoSoDaHu_FaFaBroSoSoSoWi_FaFaSisDaDaDaHu_FaFaSisDaDaSoWi_FaFaSisDaSoDaHu_FaFaSisDaSoSoWi_FaFaSisSoDaDaHu_FaFaSisSoDaSoWi_FaFaSisSoSoDaHu_FaFaSisSoSoSoWi_FaMoBroDaDaDaHu_FaMoBroDaDaSoWi_FaMoBroDaSoDaHu_FaMoBroDaSoSoWi_FaMoBroSoDaDaHu_FaMoBroSoDaSoWi_FaMoBroSoSoDaHu_FaMoBroSoSoSoWi_FaMoSisDaDaDaHu_FaMoSisDaDaSoWi_FaMoSisDaSoDaHu_FaMoSisDaSoSoWi_FaMoSisSoDaDaHu_FaMoSisSoDaSoWi_FaMoSisSoSoDaHu_FaMoSisSoSoSoWi_FaSisDaDaHu_FaSisDaSoWi_FaSisSoDaHu_FaSisSoSoWi_HuFa_HuFaBro_HuFaFa_HuFaFaBro_HuFaFaSis_HuFaMo_HuFaMoBro_HuFaMoSis_HuFaSis_HuMo_HuMoBro_HuMoFa_HuMoFaBro_HuMoFaSis_HuMoMo_HuMoMoBro_HuMoMoSis_HuMoSis_MoBroDaDaHu_MoBroDaSoWi_MoBroSoDaHu_MoBroSoSoWi_MoFaBroDaDaDaHu_MoFaBroDaDaSoWi_MoFaBroDaSoDaHu_MoFaBroDaSoSoWi_MoFaBroSoDaDaHu_MoFaBroSoDaSoWi_MoFaBroSoSoDaHu_MoFaBroSoSoSoWi_MoFaSisDaDaDaHu_MoFaSisDaDaSoWi_MoFaSisDaSoDaHu_MoFaSisDaSoSoWi_MoFaSisSoDaDaHu_MoFaSisSoDaSoWi_MoFaSisSoSoDaHu_MoFaSisSoSoSoWi_MoMoBroDaDaDaHu_MoMoBroDaDaSoWi_MoMoBroDaSoDaHu_MoMoBroDaSoSoWi_MoMoBroSoDaDaHu_MoMoBroSoDaSoWi_MoMoBroSoSoDaHu_MoMoBroSoSoSoWi_MoMoSisDaDaDaHu_MoMoSisDaDaSoWi_MoMoSisDaSoDaHu_MoMoSisDaSoSoWi_MoMoSisSoDaDaHu_MoMoSisSoDaSoWi_MoMoSisSoSoDaHu_MoMoSisSoSoSoWi_MoSisDaDaHu_MoSisDaSoWi_MoSisSoDaHu_MoSisSoSoWi_SisDaHu_SisSoWi_SoDaHu_SoSoWi_SoWi_WiFa_WiFaBro_WiFaFa_WiFaFaBro_WiFaFaSis_WiFaMo_WiFaMoBro_WiFaMoSis_WiFaSis_WiMo_WiMoBro_WiMoFa_WiMoFaBro_WiMoFaSis_WiMoMo_WiMoMoBro_WiMoMoSis_WiMoSis"}
;; 0
%manugeng:0, spice:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%manugeng:0, spice:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%manugeng:0, spice:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%manugeng:0, spice:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%manugeng:0, spice:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%manugeng:0, spice:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%manugeng:0, spice:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%manugeng:0, spice:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 8
%manugeng:1, spice:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 9
%manugeng:1, spice:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 10
%manugeng:1, spice:1, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 11
%manugeng:1, spice:1, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 12
%manugeng:2, spice:0, parents:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 13
%manugeng:2, spice:0, parents:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 14
%manugeng:2, spice:0, parents:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 15
%manugeng:2, spice:0, parents:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 16
%manugeng:2, spice:1, parents:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 17
%manugeng:2, spice:1, parents:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 18
%manugeng:2, spice:1, parents:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 19
%manugeng:2, spice:1, parents:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).
;; 20
%manugeng:3, spice:0, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 21
%manugeng:3, spice:0, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 22
%manugeng:3, spice:0, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 23
%manugeng:3, spice:0, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 24
%manugeng:3, spice:0, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 25
%manugeng:3, spice:0, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 26
%manugeng:3, spice:0, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%manugeng:3, spice:0, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaSis}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 28
%manugeng:3, spice:1, parents:0, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%manugeng:3, spice:1, parents:0, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%manugeng:3, spice:1, parents:0, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 31
%manugeng:3, spice:1, parents:0, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%manugeng:3, spice:1, parents:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 33
%manugeng:3, spice:1, parents:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 34
%manugeng:3, spice:1, parents:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 35
%manugeng:3, spice:1, parents:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaSis}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 36
%manugeng:4, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), spouse(Alter, A).
;; 37
%manugeng:4, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), spouse(Alter, A).
;; 38
%manugeng:5, children:0, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 son(A, Ego), son(B, A), spouse(Alter, B).
;; 39
%manugeng:5, children:0, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 son(A, Ego), daughter(B, A), spouse(Alter, B).
;; 40
%manugeng:5, children:1, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 daughter(A, Ego), son(B, A), spouse(Alter, B).
;; 41
%manugeng:5, children:1, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 daughter(A, Ego), daughter(B, A), spouse(Alter, B).
;; 42
%manugeng:6, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), spouse(Alter, D).
;; 43
%manugeng:6, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), spouse(Alter, D).
;; 44
%manugeng:6, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), spouse(Alter, D).
;; 45
%manugeng:6, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), spouse(Alter, D).
;; 46
%manugeng:7, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), spouse(Alter, F).
;; 47
%manugeng:7, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), spouse(Alter, F).
;; 48
%manugeng:7, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), spouse(Alter, F).
;; 49
%manugeng:7, pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), spouse(Alter, F).
;; 50
%manugeng:7, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), spouse(Alter, F).
;; 51
%manugeng:7, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), spouse(Alter, F).
;; 52
%manugeng:7, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), spouse(Alter, F).
;; 53
%manugeng:7, pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), spouse(Alter, F).
;; 54
%manugeng:7, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), spouse(Alter, F).
;; 55
%manugeng:7, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), spouse(Alter, F).
;; 56
%manugeng:7, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), spouse(Alter, F).
;; 57
%manugeng:7, pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), spouse(Alter, F).
;; 58
%manugeng:7, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), spouse(Alter, F).
;; 59
%manugeng:7, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), spouse(Alter, F).
;; 60
%manugeng:7, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), spouse(Alter, F).
;; 61
%manugeng:7, pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), spouse(Alter, F).
;; 62
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 63
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 64
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 65
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 66
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 67
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 68
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 69
%manugeng:7, pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 70
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 71
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 72
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 73
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 74
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 75
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 76
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 77
%manugeng:7, pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 78
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 79
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 80
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 81
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 82
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 83
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 84
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 85
%manugeng:7, pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 86
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 87
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 88
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 89
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 90
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 91
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 92
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaSoWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 93
%manugeng:7, pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 94
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 95
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 96
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 97
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 98
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 99
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 100
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 101
%manugeng:7, pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 102
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 103
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 104
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 105
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 106
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 107
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 108
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 109
%manugeng:7, pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 110
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 111
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 112
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 113
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 114
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 115
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 116
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 117
%manugeng:7, pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 118
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 119
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 120
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 121
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).
;; 122
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), spouse(Alter, H).
;; 123
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), spouse(Alter, H).
;; 124
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaSoWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), spouse(Alter, H).
;; 125
%manugeng:7, pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), spouse(Alter, H).


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


pensan(Alter, Ego) :-  parents(A, Ego), siblings(B, A), children(Alter, B).
                   |   parents(A, Ego), parents(B, A), siblings(C, B), children(D, C), children(Alter, D).
{"FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo"}
;; 0
%pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%pensan:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%pensan:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%pensan:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 7
%pensan:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 8
%pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 9
%pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 10
%pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 11
%pensan:1, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 12
%pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 13
%pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 14
%pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 15
%pensan:1, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 16
%pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 17
%pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 18
%pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 19
%pensan:1, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 20
%pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 21
%pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 22
%pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 23
%pensan:1, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 24
%pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 25
%pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 26
%pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 27
%pensan:1, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 28
%pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 29
%pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 30
%pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 31
%pensan:1, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 32
%pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 33
%pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 34
%pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 35
%pensan:1, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 36
%pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 37
%pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 38
%pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 39
%pensan:1, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


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


square[aux]01(Alter, Ego) :-  generation[aux]01(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]01(Alter, A).
;; 0
%square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 7
%square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 8
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 9
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 10
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 11
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 12
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 13
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 14
%square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 15
%square[aux]01:2, parents:0, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 16
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 17
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 18
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 19
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 20
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 21
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 22
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 23
%square[aux]01:2, parents:0, square[aux]01:2, parents:0, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 24
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 25
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 26
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 27
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 28
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 29
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 30
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 31
%square[aux]01:2, parents:0, square[aux]01:2, parents:1, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 32
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 33
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 34
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 35
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 36
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 37
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 38
%square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 39
%square[aux]01:2, parents:1, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 40
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 41
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 42
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 43
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 44
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 45
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 46
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 47
%square[aux]01:2, parents:1, square[aux]01:2, parents:0, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 48
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 49
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 50
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 51
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 52
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 53
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:0, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 54
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:0, generation[aux]01:1, parents:1, generation[aux]01:1, parents:1, generation[aux]01:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 55
%square[aux]01:2, parents:1, square[aux]01:2, parents:1, square[aux]01:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), parent(Alter, B).


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


wadi(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
{"Bro_Sis"}
;; 0
%wadi:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%wadi:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).

