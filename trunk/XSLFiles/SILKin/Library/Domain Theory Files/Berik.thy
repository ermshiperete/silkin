;;  Horn Clause Representation of Berik Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Berik") (author, "Peter Westrum") (date, "1983-01-01") (citation, "Peter Westrum in GODS, HEROES, KINSMEN pp. 273-288") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(synonyms, (nausa, suina))
(overlaps, (ebo, (uwa, nausa)), (ginau, (iye, uwa, nausa)), (iye, (ginau, muna, niye)), (muna, (iye, nausa)), (nemeltene, (tane, tane_gitowai, tane_yafintowai)), (niye, (iye, uwa, tane, tane_gitowai, tane_yafintowai)), (tane, (niye, nemeltene, tane_gitowai, tane_yafintowai)), (tane_gitowai, (niye, tane, nemeltene)), (tane_yafintowai, (niye, tane, nemeltene)), (uwa, (ebo, ginau, niye)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

abwai(Alter, Ego) :-  parents(A, Ego), parents(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), generation[aux]02smallGS(Alter, B).
                  |  [ext],  parents(A, Ego), parents(B, A), generation[aux]02smallGS(C, B), spouse(Alter, C).
                  |   children(A, Ego), children(Alter, A).
                  |  [ext],  generation[aux]02smallGS(A, Ego), children(B, A), children(Alter, B).
                  |  [ext],  spice(A, Ego), generation[aux]02smallGS(B, A), children(C, B), children(Alter, C).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo_DaDa_DaSo_FaBroDaDaDa_FaBroDaDaSo_FaBroDaSoDa_FaBroDaSoSo_FaBroSoDaDa_FaBroSoDaSo_FaBroSoSoDa_FaBroSoSoSo_FaFa_FaFaBro_FaFaBroWi_FaFaFaBroDa_FaFaFaBroDaHu_FaFaFaBroSo_FaFaFaBroSoWi_FaFaFaSisDa_FaFaFaSisDaHu_FaFaFaSisSo_FaFaFaSisSoWi_FaFaMoBroDa_FaFaMoBroDaHu_FaFaMoBroSo_FaFaMoBroSoWi_FaFaMoSisDa_FaFaMoSisDaHu_FaFaMoSisSo_FaFaMoSisSoWi_FaFaSis_FaFaSisHu_FaMo_FaMoBro_FaMoBroWi_FaMoFaBroDa_FaMoFaBroDaHu_FaMoFaBroSo_FaMoFaBroSoWi_FaMoFaSisDa_FaMoFaSisDaHu_FaMoFaSisSo_FaMoFaSisSoWi_FaMoMoBroDa_FaMoMoBroDaHu_FaMoMoBroSo_FaMoMoBroSoWi_FaMoMoSisDa_FaMoMoSisDaHu_FaMoMoSisSo_FaMoMoSisSoWi_FaMoSis_FaMoSisHu_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSoDa_FaSisSoSoSo_HuBroDaDa_HuBroDaSo_HuBroSoDa_HuBroSoSo_HuFaBroDaDaDa_HuFaBroDaDaSo_HuFaBroDaSoDa_HuFaBroDaSoSo_HuFaBroSoDaDa_HuFaBroSoDaSo_HuFaBroSoSoDa_HuFaBroSoSoSo_HuFaSisDaDaDa_HuFaSisDaDaSo_HuFaSisDaSoDa_HuFaSisDaSoSo_HuFaSisSoDaDa_HuFaSisSoDaSo_HuFaSisSoSoDa_HuFaSisSoSoSo_HuMoBroDaDaDa_HuMoBroDaDaSo_HuMoBroDaSoDa_HuMoBroDaSoSo_HuMoBroSoDaDa_HuMoBroSoDaSo_HuMoBroSoSoDa_HuMoBroSoSoSo_HuMoSisDaDaDa_HuMoSisDaDaSo_HuMoSisDaSoDa_HuMoSisDaSoSo_HuMoSisSoDaDa_HuMoSisSoDaSo_HuMoSisSoSoDa_HuMoSisSoSoSo_HuSisDaDa_HuSisDaSo_HuSisSoDa_HuSisSoSo_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSoDa_MoBroSoSoSo_MoFa_MoFaBro_MoFaBroWi_MoFaFaBroDa_MoFaFaBroDaHu_MoFaFaBroSo_MoFaFaBroSoWi_MoFaFaSisDa_MoFaFaSisDaHu_MoFaFaSisSo_MoFaFaSisSoWi_MoFaMoBroDa_MoFaMoBroDaHu_MoFaMoBroSo_MoFaMoBroSoWi_MoFaMoSisDa_MoFaMoSisDaHu_MoFaMoSisSo_MoFaMoSisSoWi_MoFaSis_MoFaSisHu_MoMo_MoMoBro_MoMoBroWi_MoMoFaBroDa_MoMoFaBroDaHu_MoMoFaBroSo_MoMoFaBroSoWi_MoMoFaSisDa_MoMoFaSisDaHu_MoMoFaSisSo_MoMoFaSisSoWi_MoMoMoBroDa_MoMoMoBroDaHu_MoMoMoBroSo_MoMoMoBroSoWi_MoMoMoSisDa_MoMoMoSisDaHu_MoMoMoSisSo_MoMoMoSisSoWi_MoMoSis_MoMoSisHu_MoSisDaDaDa_MoSisDaDaSo_MoSisDaSoDa_MoSisDaSoSo_MoSisSoDaDa_MoSisSoDaSo_MoSisSoSoDa_MoSisSoSoSo_SisDaDa_SisDaSo_SisSoDa_SisSoSo_SoDa_SoSo_WiBroDaDa_WiBroDaSo_WiBroSoDa_WiBroSoSo_WiFaBroDaDaDa_WiFaBroDaDaSo_WiFaBroDaSoDa_WiFaBroDaSoSo_WiFaBroSoDaDa_WiFaBroSoDaSo_WiFaBroSoSoDa_WiFaBroSoSoSo_WiFaSisDaDaDa_WiFaSisDaDaSo_WiFaSisDaSoDa_WiFaSisDaSoSo_WiFaSisSoDaDa_WiFaSisSoDaSo_WiFaSisSoSoDa_WiFaSisSoSoSo_WiMoBroDaDaDa_WiMoBroDaDaSo_WiMoBroDaSoDa_WiMoBroDaSoSo_WiMoBroSoDaDa_WiMoBroSoDaSo_WiMoBroSoSoDa_WiMoBroSoSoSo_WiMoSisDaDaDa_WiMoSisDaDaSo_WiMoSisDaSoDa_WiMoSisDaSoSo_WiMoSisSoDaDa_WiMoSisSoDaSo_WiMoSisSoSoDa_WiMoSisSoSoSo_WiSisDaDa_WiSisDaSo_WiSisSoDa_WiSisSoSo"}
;; 0
%abwai:0, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%abwai:0, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%abwai:0, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 3
%abwai:0, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 4
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 7
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 9
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 10
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 11
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 12
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 13
%abwai:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 14
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 15
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 16
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 17
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 18
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 19
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 21
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 22
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 23
%abwai:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 24
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 25
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 26
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 27
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 28
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 29
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 30
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 31
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 32
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 33
%abwai:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 34
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 35
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 36
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 37
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 38
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 39
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 40
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 41
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 42
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 43
%abwai:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 44
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), spouse(Alter, E).
;; 45
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), spouse(Alter, E).
;; 46
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 47
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 48
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 49
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 50
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 51
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 52
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 53
%abwai:2, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoMoFaSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 54
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), spouse(Alter, E).
;; 55
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), spouse(Alter, E).
;; 56
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 57
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 58
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 59
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaMoSisDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 60
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 61
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 62
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 63
%abwai:2, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {MoFaFaSisDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 64
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), spouse(Alter, E).
;; 65
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), spouse(Alter, E).
;; 66
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 67
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoBroDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 68
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 69
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoMoSisDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 70
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 71
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 72
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 73
%abwai:2, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaMoFaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 74
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), spouse(Alter, E).
;; 75
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaSisHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), spouse(Alter, E).
;; 76
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 77
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoBroDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 78
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 79
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaMoSisDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 80
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), spouse(Alter, G).
;; 81
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaFaBroDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), spouse(Alter, G).
;; 82
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), spouse(Alter, G).
;; 83
%abwai:2, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=2,  PC=8, S=1, Star=0,  {FaFaFaSisDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), spouse(Alter, G).
;; 84
%abwai:3, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 85
%abwai:3, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 86
%abwai:3, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 87
%abwai:3, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 88
%abwai:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 89
%abwai:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 90
%abwai:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 91
%abwai:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 92
%abwai:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 93
%abwai:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 94
%abwai:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 95
%abwai:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 96
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 97
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 98
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 99
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 100
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 101
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 102
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 103
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 104
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 105
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 106
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 107
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 108
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 109
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 110
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 111
%abwai:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 112
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 113
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 114
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 115
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 116
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 117
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 118
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 119
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 120
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 121
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 122
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 123
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 124
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 125
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 126
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 127
%abwai:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 128
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 129
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 130
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 131
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 132
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 133
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 134
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 135
%abwai:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 136
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 137
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 138
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 139
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 140
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 141
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 142
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 143
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 144
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 145
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 146
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 147
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 148
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 149
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 150
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 151
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoSisDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 152
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 153
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 154
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 155
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 156
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 157
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 158
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 159
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaBroDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 160
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 161
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 162
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 163
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 164
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 165
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 166
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 167
%abwai:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuFaSisDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 168
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 169
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 170
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 171
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 172
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 173
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 174
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 175
%abwai:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 176
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 177
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 178
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 179
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 180
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 181
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 182
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 183
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 184
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 185
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 186
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 187
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 188
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 189
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 190
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 191
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoSisDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 192
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 193
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 194
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 195
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 196
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 197
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 198
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 199
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaBroDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 200
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 201
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 202
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 203
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 204
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 205
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 206
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 207
%abwai:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiFaSisDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


aiya(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                 |  [ext],  parents(A, Ego), generation[aux]02gs(B, A), children(Alter, B), elder(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%aiya:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%aiya:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%aiya:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 3
%aiya:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 4
%aiya:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 5
%aiya:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 6
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 7
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 8
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 9
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 10
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 11
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 12
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 13
%aiya:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 14
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 15
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 16
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 17
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 18
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 19
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 20
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 21
%aiya:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 22
%aiya:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), elder(Alter, Ego).
;; 23
%aiya:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(Alter, Ego).
;; 24
%aiya:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), elder(Alter, Ego).
;; 25
%aiya:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), elder(Alter, Ego).
;; 26
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 27
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 28
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 29
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 30
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 31
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 32
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 33
%aiya:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 34
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 35
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 36
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 37
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 38
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), elder(Alter, Ego).
;; 39
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), elder(Alter, Ego).
;; 40
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), elder(Alter, Ego).
;; 41
%aiya:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), elder(Alter, Ego).


anggwa(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%anggwa:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


asalasala(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(Alter, B).
                      |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), generation[aux]02smallGS(Alter, C).
                      |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), generation[aux]02small(D, C), spice(Alter, D).
                      |   children(A, Ego), children(B, A), children(Alter, B).
                      |  [ext],  generation[aux]02smallGS(A, Ego), children(B, A), children(C, B), children(Alter, C).
                      |  [ext],  spice(A, Ego), generation[aux]02smallGS(B, A), children(C, B), children(D, C), children(Alter, D).
{"BroDaDaDa_BroDaDaSo_BroDaSoDa_BroDaSoSo_BroSoDaDa_BroSoDaSo_BroSoSoDa_BroSoSoSo_DaDaDa_DaDaSo_DaSoDa_DaSoSo_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFaFa_FaFaFaBro_FaFaFaBroWi_FaFaFaFaBroDa_FaFaFaFaBroDaHu_FaFaFaFaBroSo_FaFaFaFaBroSoWi_FaFaFaFaSisDa_FaFaFaFaSisDaHu_FaFaFaFaSisSo_FaFaFaFaSisSoWi_FaFaFaMoBroDa_FaFaFaMoBroDaHu_FaFaFaMoBroSo_FaFaFaMoBroSoWi_FaFaFaMoSisDa_FaFaFaMoSisDaHu_FaFaFaMoSisSo_FaFaFaMoSisSoWi_FaFaFaSis_FaFaFaSisHu_FaFaMo_FaFaMoBro_FaFaMoBroWi_FaFaMoFaBroDa_FaFaMoFaBroDaHu_FaFaMoFaBroSo_FaFaMoFaBroSoWi_FaFaMoFaSisDa_FaFaMoFaSisDaHu_FaFaMoFaSisSo_FaFaMoFaSisSoWi_FaFaMoMoBroDa_FaFaMoMoBroDaHu_FaFaMoMoBroSo_FaFaMoMoBroSoWi_FaFaMoMoSisDa_FaFaMoMoSisDaHu_FaFaMoMoSisSo_FaFaMoMoSisSoWi_FaFaMoSis_FaFaMoSisHu_FaMoFa_FaMoFaBro_FaMoFaBroWi_FaMoFaFaBroDa_FaMoFaFaBroDaHu_FaMoFaFaBroSo_FaMoFaFaBroSoWi_FaMoFaFaSisDa_FaMoFaFaSisDaHu_FaMoFaFaSisSo_FaMoFaFaSisSoWi_FaMoFaMoBroDa_FaMoFaMoBroDaHu_FaMoFaMoBroSo_FaMoFaMoBroSoWi_FaMoFaMoSisDa_FaMoFaMoSisDaHu_FaMoFaMoSisSo_FaMoFaMoSisSoWi_FaMoFaSis_FaMoFaSisHu_FaMoMo_FaMoMoBro_FaMoMoBroWi_FaMoMoFaBroDa_FaMoMoFaBroDaHu_FaMoMoFaBroSo_FaMoMoFaBroSoWi_FaMoMoFaSisDa_FaMoMoFaSisDaHu_FaMoMoFaSisSo_FaMoMoFaSisSoWi_FaMoMoMoBroDa_FaMoMoMoBroDaHu_FaMoMoMoBroSo_FaMoMoMoBroSoWi_FaMoMoMoSisDa_FaMoMoMoSisDaHu_FaMoMoMoSisSo_FaMoMoMoSisSoWi_FaMoMoSis_FaMoMoSisHu_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSoDa_FaSisSoSoSoSo_HuBroDaDaDa_HuBroDaDaSo_HuBroDaSoDa_HuBroDaSoSo_HuBroSoDaDa_HuBroSoDaSo_HuBroSoSoDa_HuBroSoSoSo_HuFaBroDaDaDaDa_HuFaBroDaDaDaSo_HuFaBroDaDaSoDa_HuFaBroDaDaSoSo_HuFaBroDaSoDaDa_HuFaBroDaSoDaSo_HuFaBroDaSoSoDa_HuFaBroDaSoSoSo_HuFaBroSoDaDaDa_HuFaBroSoDaDaSo_HuFaBroSoDaSoDa_HuFaBroSoDaSoSo_HuFaBroSoSoDaDa_HuFaBroSoSoDaSo_HuFaBroSoSoSoDa_HuFaBroSoSoSoSo_HuFaSisDaDaDaDa_HuFaSisDaDaDaSo_HuFaSisDaDaSoDa_HuFaSisDaDaSoSo_HuFaSisDaSoDaDa_HuFaSisDaSoDaSo_HuFaSisDaSoSoDa_HuFaSisDaSoSoSo_HuFaSisSoDaDaDa_HuFaSisSoDaDaSo_HuFaSisSoDaSoDa_HuFaSisSoDaSoSo_HuFaSisSoSoDaDa_HuFaSisSoSoDaSo_HuFaSisSoSoSoDa_HuFaSisSoSoSoSo_HuMoBroDaDaDaDa_HuMoBroDaDaDaSo_HuMoBroDaDaSoDa_HuMoBroDaDaSoSo_HuMoBroDaSoDaDa_HuMoBroDaSoDaSo_HuMoBroDaSoSoDa_HuMoBroDaSoSoSo_HuMoBroSoDaDaDa_HuMoBroSoDaDaSo_HuMoBroSoDaSoDa_HuMoBroSoDaSoSo_HuMoBroSoSoDaDa_HuMoBroSoSoDaSo_HuMoBroSoSoSoDa_HuMoBroSoSoSoSo_HuMoSisDaDaDaDa_HuMoSisDaDaDaSo_HuMoSisDaDaSoDa_HuMoSisDaDaSoSo_HuMoSisDaSoDaDa_HuMoSisDaSoDaSo_HuMoSisDaSoSoDa_HuMoSisDaSoSoSo_HuMoSisSoDaDaDa_HuMoSisSoDaDaSo_HuMoSisSoDaSoDa_HuMoSisSoDaSoSo_HuMoSisSoSoDaDa_HuMoSisSoSoDaSo_HuMoSisSoSoSoDa_HuMoSisSoSoSoSo_HuSisDaDaDa_HuSisDaDaSo_HuSisDaSoDa_HuSisDaSoSo_HuSisSoDaDa_HuSisSoDaSo_HuSisSoSoDa_HuSisSoSoSo_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoFaFa_MoFaFaBro_MoFaFaBroWi_MoFaFaFaBroDa_MoFaFaFaBroDaHu_MoFaFaFaBroSo_MoFaFaFaBroSoWi_MoFaFaFaSisDa_MoFaFaFaSisDaHu_MoFaFaFaSisSo_MoFaFaFaSisSoWi_MoFaFaMoBroDa_MoFaFaMoBroDaHu_MoFaFaMoBroSo_MoFaFaMoBroSoWi_MoFaFaMoSisDa_MoFaFaMoSisDaHu_MoFaFaMoSisSo_MoFaFaMoSisSoWi_MoFaFaSis_MoFaFaSisHu_MoFaMo_MoFaMoBro_MoFaMoBroWi_MoFaMoFaBroDa_MoFaMoFaBroDaHu_MoFaMoFaBroSo_MoFaMoFaBroSoWi_MoFaMoFaSisDa_MoFaMoFaSisDaHu_MoFaMoFaSisSo_MoFaMoFaSisSoWi_MoFaMoMoBroDa_MoFaMoMoBroDaHu_MoFaMoMoBroSo_MoFaMoMoBroSoWi_MoFaMoMoSisDa_MoFaMoMoSisDaHu_MoFaMoMoSisSo_MoFaMoMoSisSoWi_MoFaMoSis_MoFaMoSisHu_MoMoFa_MoMoFaBro_MoMoFaBroWi_MoMoFaFaBroDa_MoMoFaFaBroDaHu_MoMoFaFaBroSo_MoMoFaFaBroSoWi_MoMoFaFaSisDa_MoMoFaFaSisDaHu_MoMoFaFaSisSo_MoMoFaFaSisSoWi_MoMoFaMoBroDa_MoMoFaMoBroDaHu_MoMoFaMoBroSo_MoMoFaMoBroSoWi_MoMoFaMoSisDa_MoMoFaMoSisDaHu_MoMoFaMoSisSo_MoMoFaMoSisSoWi_MoMoFaSis_MoMoFaSisHu_MoMoMo_MoMoMoBro_MoMoMoBroWi_MoMoMoFaBroDa_MoMoMoFaBroDaHu_MoMoMoFaBroSo_MoMoMoFaBroSoWi_MoMoMoFaSisDa_MoMoMoFaSisDaHu_MoMoMoFaSisSo_MoMoMoFaSisSoWi_MoMoMoMoBroDa_MoMoMoMoBroDaHu_MoMoMoMoBroSo_MoMoMoMoBroSoWi_MoMoMoMoSisDa_MoMoMoMoSisDaHu_MoMoMoMoSisSo_MoMoMoMoSisSoWi_MoMoMoSis_MoMoMoSisHu_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDaDa_SisDaDaSo_SisDaSoDa_SisDaSoSo_SisSoDaDa_SisSoDaSo_SisSoSoDa_SisSoSoSo_SoDaDa_SoDaSo_SoSoDa_SoSoSo_WiBroDaDaDa_WiBroDaDaSo_WiBroDaSoDa_WiBroDaSoSo_WiBroSoDaDa_WiBroSoDaSo_WiBroSoSoDa_WiBroSoSoSo_WiFaBroDaDaDaDa_WiFaBroDaDaDaSo_WiFaBroDaDaSoDa_WiFaBroDaDaSoSo_WiFaBroDaSoDaDa_WiFaBroDaSoDaSo_WiFaBroDaSoSoDa_WiFaBroDaSoSoSo_WiFaBroSoDaDaDa_WiFaBroSoDaDaSo_WiFaBroSoDaSoDa_WiFaBroSoDaSoSo_WiFaBroSoSoDaDa_WiFaBroSoSoDaSo_WiFaBroSoSoSoDa_WiFaBroSoSoSoSo_WiFaSisDaDaDaDa_WiFaSisDaDaDaSo_WiFaSisDaDaSoDa_WiFaSisDaDaSoSo_WiFaSisDaSoDaDa_WiFaSisDaSoDaSo_WiFaSisDaSoSoDa_WiFaSisDaSoSoSo_WiFaSisSoDaDaDa_WiFaSisSoDaDaSo_WiFaSisSoDaSoDa_WiFaSisSoDaSoSo_WiFaSisSoSoDaDa_WiFaSisSoSoDaSo_WiFaSisSoSoSoDa_WiFaSisSoSoSoSo_WiMoBroDaDaDaDa_WiMoBroDaDaDaSo_WiMoBroDaDaSoDa_WiMoBroDaDaSoSo_WiMoBroDaSoDaDa_WiMoBroDaSoDaSo_WiMoBroDaSoSoDa_WiMoBroDaSoSoSo_WiMoBroSoDaDaDa_WiMoBroSoDaDaSo_WiMoBroSoDaSoDa_WiMoBroSoDaSoSo_WiMoBroSoSoDaDa_WiMoBroSoSoDaSo_WiMoBroSoSoSoDa_WiMoBroSoSoSoSo_WiMoSisDaDaDaDa_WiMoSisDaDaDaSo_WiMoSisDaDaSoDa_WiMoSisDaDaSoSo_WiMoSisDaSoDaDa_WiMoSisDaSoDaSo_WiMoSisDaSoSoDa_WiMoSisDaSoSoSo_WiMoSisSoDaDaDa_WiMoSisSoDaDaSo_WiMoSisSoDaSoDa_WiMoSisSoDaSoSo_WiMoSisSoSoDaDa_WiMoSisSoSoDaSo_WiMoSisSoSoSoDa_WiMoSisSoSoSoSo_WiSisDaDaDa_WiSisDaDaSo_WiSisDaSoDa_WiSisDaSoSo_WiSisSoDaDa_WiSisSoDaSo_WiSisSoSoDa_WiSisSoSoSo"}
;; 0
%asalasala:0, parents:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%asalasala:0, parents:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 2
%asalasala:0, parents:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 3
%asalasala:0, parents:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%asalasala:0, parents:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%asalasala:0, parents:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 6
%asalasala:0, parents:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 7
%asalasala:0, parents:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).
;; 8
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 11
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 12
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 13
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 14
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 15
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 16
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 17
%asalasala:1, parents:0, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 18
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 19
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 20
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 21
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 22
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 23
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 24
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 25
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 26
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 27
%asalasala:1, parents:0, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 28
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 30
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 31
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 32
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 33
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 34
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 35
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 36
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 37
%asalasala:1, parents:0, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 38
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 39
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 40
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 41
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 42
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 43
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 44
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 45
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 46
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 47
%asalasala:1, parents:0, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 48
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 49
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 50
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 51
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 52
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 54
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 55
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 56
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 57
%asalasala:1, parents:1, parents:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 58
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 59
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 60
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 61
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 62
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 63
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 64
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 65
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 66
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 67
%asalasala:1, parents:1, parents:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 68
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 69
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 70
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 71
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 72
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 73
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 74
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 75
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 76
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 77
%asalasala:1, parents:1, parents:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 78
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 79
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 80
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 81
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 82
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 83
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 84
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 85
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 86
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 87
%asalasala:1, parents:1, parents:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 88
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {MoMoMoSisHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 89
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {MoMoMoBroWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 90
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoMoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 91
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 92
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 93
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 94
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 95
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 96
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 97
%asalasala:2, parents:0, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoMoFaSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 98
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {MoMoFaSisHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 99
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {MoMoFaBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 100
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaMoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 101
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 102
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 103
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 104
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaFaBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 105
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaFaBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 106
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaFaSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 107
%asalasala:2, parents:0, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoMoFaFaSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 108
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {MoFaMoSisHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 109
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {MoFaMoBroWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 110
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoMoBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 111
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoMoBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 112
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoMoSisDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 113
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoMoSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 114
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 115
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 116
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoFaSisDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 117
%asalasala:2, parents:0, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaMoFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 118
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {MoFaFaSisHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 119
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {MoFaFaBroWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 120
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaMoBroDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 121
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaMoBroSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 122
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaMoSisDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 123
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaMoSisSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 124
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 125
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 126
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaFaSisDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 127
%asalasala:2, parents:0, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {MoFaFaFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 128
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {FaMoMoSisHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 129
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {FaMoMoBroWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 130
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoMoBroDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 131
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 132
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoMoSisDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 133
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 134
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 135
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 136
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 137
%asalasala:2, parents:1, parents:0, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoMoFaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 138
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {FaMoFaSisHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 139
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {FaMoFaBroWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 140
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaMoBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 141
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 142
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaMoSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 143
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 144
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaFaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 145
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaFaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 146
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaFaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 147
%asalasala:2, parents:1, parents:0, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaMoFaFaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 148
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {FaFaMoSisHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 149
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {FaFaMoBroWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 150
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoMoBroDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 151
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoMoBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 152
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoMoSisDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 153
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoMoSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 154
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoFaBroDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 155
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 156
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoFaSisDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 157
%asalasala:2, parents:1, parents:1, parents:0, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaMoFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 158
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:0, sibling:0, spice:0%
 Lvl=3,  PC=7, S=1, Star=0,  {FaFaFaSisHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), husband(Alter, F).
;; 159
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:0, sibling:0, spice:1%
 Lvl=3,  PC=7, S=1, Star=0,  {FaFaFaBroWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), wife(Alter, F).
;; 160
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaMoBroDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 161
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaMoBroSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 162
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaMoSisDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 163
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaMoSisSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 164
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaFaBroDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), husband(Alter, H).
;; 165
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), wife(Alter, H).
;; 166
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:0%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaFaSisDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), husband(Alter, H).
;; 167
%asalasala:2, parents:1, parents:1, parents:1, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, spice:1%
 Lvl=3,  PC=9, S=1, Star=0,  {FaFaFaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(H, G), wife(Alter, H).
;; 168
%asalasala:3, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 169
%asalasala:3, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 170
%asalasala:3, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 171
%asalasala:3, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 172
%asalasala:3, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 173
%asalasala:3, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 174
%asalasala:3, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 175
%asalasala:3, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 176
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 177
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 178
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 179
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 180
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 181
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 182
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 183
%asalasala:4, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 184
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 185
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 186
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 187
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 188
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 189
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 190
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 191
%asalasala:4, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 192
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 193
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 194
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 195
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 196
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 197
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 198
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 199
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 200
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 201
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 202
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 203
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 204
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 205
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 206
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 207
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 208
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 209
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 210
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 211
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 212
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 213
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 214
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 215
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 216
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 217
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 218
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 219
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 220
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 221
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 222
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 223
%asalasala:4, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 224
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 225
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 226
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 227
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 228
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 229
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 230
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 231
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 232
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 233
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 234
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 235
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 236
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 237
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 238
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 239
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 240
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 241
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 242
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 243
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 244
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 245
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 246
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 247
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 248
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 249
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 250
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 251
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 252
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 253
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 254
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 255
%asalasala:4, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 256
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 257
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 258
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 259
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 260
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 261
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 262
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 263
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuBroDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 264
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 265
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 266
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 267
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 268
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 269
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 270
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 271
%asalasala:5, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {HuSisDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 272
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 273
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 274
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 275
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 276
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 277
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 278
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 279
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroSoDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 280
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 281
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 282
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 283
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 284
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 285
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 286
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 287
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoBroDaDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 288
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 289
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 290
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 291
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 292
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 293
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 294
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 295
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisSoDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 296
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 297
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 298
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 299
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 300
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 301
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 302
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 303
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuMoSisDaDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 304
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 305
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 306
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 307
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 308
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 309
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 310
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 311
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroSoDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 312
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 313
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 314
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 315
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 316
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 317
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 318
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 319
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaBroDaDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 320
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 321
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 322
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 323
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 324
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 325
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 326
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 327
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisSoDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 328
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 329
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 330
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 331
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaSoDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 332
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 333
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 334
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 335
%asalasala:5, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {HuFaSisDaDaDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 336
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 337
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 338
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 339
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 340
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 341
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 342
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 343
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiBroDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 344
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 345
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 346
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 347
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 348
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 349
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 350
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 351
%asalasala:5, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=1, Star=0,  {WiSisDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 352
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 353
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 354
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 355
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 356
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 357
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 358
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 359
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroSoDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 360
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 361
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 362
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 363
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 364
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 365
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 366
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 367
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoBroDaDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 368
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 369
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 370
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 371
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 372
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 373
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 374
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 375
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisSoDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 376
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 377
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 378
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 379
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 380
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 381
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 382
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 383
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiMoSisDaDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 384
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 385
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 386
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 387
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 388
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 389
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 390
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 391
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroSoDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 392
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 393
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 394
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 395
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 396
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 397
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 398
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 399
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaBroDaDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 400
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 401
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 402
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 403
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 404
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 405
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 406
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 407
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisSoDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 408
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 409
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 410
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 411
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaSoDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 412
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 413
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 414
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 415
%asalasala:5, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=1, Star=0,  {WiFaSisDaDaDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


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


cross_gen[aux]02(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(B, Alter), not(equal(A, B)).
                             |   parents(A, Ego), para_gen[aux]02(B, A), child(Alter, B), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
                             |   parents(A, Ego), cross_gen[aux]02(B, A), child(Alter, B), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 0
%cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 1
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 2
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 3
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 4
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 5
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 6
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 7
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 8
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 9
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 10
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 11
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 12
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 13
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 14
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 15
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 16
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 17
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 18
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 19
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 20
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 21
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 22
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 23
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 24
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 25
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 26
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 27
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 28
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 29
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 30
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 31
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 32
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 33
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 34
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 35
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 36
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 37
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 38
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 39
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 40
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 41
%cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 42
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 43
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 44
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 45
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 46
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 47
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 48
%cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 49
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 50
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 51
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 52
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 53
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 54
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 55
%cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), child(Alter, J), gender(L, Ego), gender(M, Alter), not(equal(L, M)).
;; 56
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 57
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 58
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 59
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 60
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 61
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 62
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 63
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 64
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 65
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 66
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 67
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 68
%cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 69
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 70
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 71
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 72
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 73
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 74
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 75
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), child(Alter, J), gender(M, Ego), gender(N, Alter), not(equal(M, N)).
;; 76
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 77
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 78
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 79
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 80
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).
;; 81
%cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), child(Alter, K), gender(N, Ego), gender(O, Alter), not(equal(N, O)).


ebo(Alter, Ego) :-  husband(Ego, A), father(Alter, A).
                |   parents(Ego, A), husband(Alter, A).
                |   female(Ego), sister(A, Ego), husband(Alter, A), younger(A, Ego).
                |  [ext],  husband(Ego, A), father(B, A), generation[aux]02gs(Alter, B).
                |  [ext],  generation[aux]02(A, Ego), parents(A, B), husband(Alter, B).
                |  [ext],  female(Ego), parents(A, Ego), generation[aux]02gs(B, A), daughter(C, B), husband(Alter, C), younger(C, Ego).
{"BroDaHu_DaHu_FaBroDaDaHu_FaBroDaHu_FaBroSoDaHu_FaFaBroDaDaDaHu_FaFaBroDaDaHu_FaFaBroDaSoDaHu_FaFaBroSoDaDaHu_FaFaBroSoDaHu_FaFaBroSoSoDaHu_FaFaFaBroDaDaDaHu_FaFaFaBroDaSoDaHu_FaFaFaBroSoDaDaHu_FaFaFaBroSoSoDaHu_FaFaFaSisDaDaDaHu_FaFaFaSisDaSoDaHu_FaFaFaSisSoDaDaHu_FaFaFaSisSoSoDaHu_FaFaMoBroDaDaDaHu_FaFaMoBroDaSoDaHu_FaFaMoBroSoDaDaHu_FaFaMoBroSoSoDaHu_FaFaMoSisDaDaDaHu_FaFaMoSisDaSoDaHu_FaFaMoSisSoDaDaHu_FaFaMoSisSoSoDaHu_FaFaSisDaDaDaHu_FaFaSisDaDaHu_FaFaSisDaSoDaHu_FaFaSisSoDaDaHu_FaFaSisSoDaHu_FaFaSisSoSoDaHu_FaMoBroDaDaDaHu_FaMoBroDaDaHu_FaMoBroDaSoDaHu_FaMoBroSoDaDaHu_FaMoBroSoDaHu_FaMoBroSoSoDaHu_FaMoFaBroDaDaDaHu_FaMoFaBroDaSoDaHu_FaMoFaBroSoDaDaHu_FaMoFaBroSoSoDaHu_FaMoFaSisDaDaDaHu_FaMoFaSisDaSoDaHu_FaMoFaSisSoDaDaHu_FaMoFaSisSoSoDaHu_FaMoMoBroDaDaDaHu_FaMoMoBroDaSoDaHu_FaMoMoBroSoDaDaHu_FaMoMoBroSoSoDaHu_FaMoMoSisDaDaDaHu_FaMoMoSisDaSoDaHu_FaMoMoSisSoDaDaHu_FaMoMoSisSoSoDaHu_FaMoSisDaDaDaHu_FaMoSisDaDaHu_FaMoSisDaSoDaHu_FaMoSisSoDaDaHu_FaMoSisSoDaHu_FaMoSisSoSoDaHu_FaSisDaDaHu_FaSisDaHu_FaSisSoDaHu_MoBroDaDaHu_MoBroDaHu_MoBroSoDaHu_MoFaBroDaDaDaHu_MoFaBroDaDaHu_MoFaBroDaSoDaHu_MoFaBroSoDaDaHu_MoFaBroSoDaHu_MoFaBroSoSoDaHu_MoFaFaBroDaDaDaHu_MoFaFaBroDaSoDaHu_MoFaFaBroSoDaDaHu_MoFaFaBroSoSoDaHu_MoFaFaSisDaDaDaHu_MoFaFaSisDaSoDaHu_MoFaFaSisSoDaDaHu_MoFaFaSisSoSoDaHu_MoFaMoBroDaDaDaHu_MoFaMoBroDaSoDaHu_MoFaMoBroSoDaDaHu_MoFaMoBroSoSoDaHu_MoFaMoSisDaDaDaHu_MoFaMoSisDaSoDaHu_MoFaMoSisSoDaDaHu_MoFaMoSisSoSoDaHu_MoFaSisDaDaDaHu_MoFaSisDaDaHu_MoFaSisDaSoDaHu_MoFaSisSoDaDaHu_MoFaSisSoDaHu_MoFaSisSoSoDaHu_MoMoBroDaDaDaHu_MoMoBroDaDaHu_MoMoBroDaSoDaHu_MoMoBroSoDaDaHu_MoMoBroSoDaHu_MoMoBroSoSoDaHu_MoMoFaBroDaDaDaHu_MoMoFaBroDaSoDaHu_MoMoFaBroSoDaDaHu_MoMoFaBroSoSoDaHu_MoMoFaSisDaDaDaHu_MoMoFaSisDaSoDaHu_MoMoFaSisSoDaDaHu_MoMoFaSisSoSoDaHu_MoMoMoBroDaDaDaHu_MoMoMoBroDaSoDaHu_MoMoMoBroSoDaDaHu_MoMoMoBroSoSoDaHu_MoMoMoSisDaDaDaHu_MoMoMoSisDaSoDaHu_MoMoMoSisSoDaDaHu_MoMoMoSisSoSoDaHu_MoMoSisDaDaDaHu_MoMoSisDaDaHu_MoMoSisDaSoDaHu_MoMoSisSoDaDaHu_MoMoSisSoDaHu_MoMoSisSoSoDaHu_MoSisDaDaHu_MoSisDaHu_MoSisSoDaHu_SisDaHu_SisHu_WiFa_WiFaBro_WiFaFaBroDa_WiFaFaBroSo_WiFaFaFaBroDaDa_WiFaFaFaBroDaSo_WiFaFaFaBroSoDa_WiFaFaFaBroSoSo_WiFaFaFaSisDaDa_WiFaFaFaSisDaSo_WiFaFaFaSisSoDa_WiFaFaFaSisSoSo_WiFaFaMoBroDaDa_WiFaFaMoBroDaSo_WiFaFaMoBroSoDa_WiFaFaMoBroSoSo_WiFaFaMoSisDaDa_WiFaFaMoSisDaSo_WiFaFaMoSisSoDa_WiFaFaMoSisSoSo_WiFaFaSisDa_WiFaFaSisSo_WiFaMoBroDa_WiFaMoBroSo_WiFaMoFaBroDaDa_WiFaMoFaBroDaSo_WiFaMoFaBroSoDa_WiFaMoFaBroSoSo_WiFaMoFaSisDaDa_WiFaMoFaSisDaSo_WiFaMoFaSisSoDa_WiFaMoFaSisSoSo_WiFaMoMoBroDaDa_WiFaMoMoBroDaSo_WiFaMoMoBroSoDa_WiFaMoMoBroSoSo_WiFaMoMoSisDaDa_WiFaMoMoSisDaSo_WiFaMoMoSisSoDa_WiFaMoMoSisSoSo_WiFaMoSisDa_WiFaMoSisSo_WiFaSis"}
;; 0
%ebo:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 husband(Ego, A), father(Alter, A).
;; 1
%ebo:1, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 mother(Ego, A), husband(Alter, A).
;; 2
%ebo:1, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 father(Ego, A), husband(Alter, A).
;; 3
%ebo:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C), younger(C, Ego).
;; 4
%ebo:3, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%ebo:3, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 7
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 8
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 9
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 10
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroSoSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 11
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 12
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroDaSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 13
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 14
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisSoSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 15
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 16
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 17
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 18
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroSoSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 19
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 20
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 21
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 22
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisSoSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 23
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 24
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisDaSo}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 25
%ebo:3, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 26
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 27
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 28
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 29
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 30
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 31
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 32
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroDaSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 33
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 34
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 35
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 36
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisDaSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 37
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 38
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 39
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 40
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroDaSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 41
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 42
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisSoSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 43
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 44
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisDaSo}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 45
%ebo:3, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 46
%ebo:4, generation[aux]02:0, sibling:0, parents:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), mother(C, D), husband(Alter, D).
;; 47
%ebo:4, generation[aux]02:0, sibling:0, parents:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), father(C, D), husband(Alter, D).
;; 48
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, parents:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), mother(E, F), husband(Alter, F).
;; 49
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, parents:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), father(E, F), husband(Alter, F).
;; 50
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, parents:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), mother(E, F), husband(Alter, F).
;; 51
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, parents:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), father(E, F), husband(Alter, F).
;; 52
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 53
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 54
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 55
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 56
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 57
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 58
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 59
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 60
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 61
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 62
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 63
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 64
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 65
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 66
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 67
%ebo:4, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 68
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, parents:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), mother(E, F), husband(Alter, F).
;; 69
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, parents:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), father(E, F), husband(Alter, F).
;; 70
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, parents:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), mother(E, F), husband(Alter, F).
;; 71
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, parents:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), father(E, F), husband(Alter, F).
;; 72
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 73
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 74
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 75
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 76
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 77
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 78
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 79
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 80
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 81
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 82
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 83
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 84
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 85
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 86
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), mother(G, H), husband(Alter, H).
;; 87
%ebo:4, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, parents:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), father(G, H), husband(Alter, H).
;; 88
%ebo:5, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E), younger(E, Ego).
;; 89
%ebo:5, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E), younger(E, Ego).
;; 90
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 91
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 92
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 93
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 94
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 95
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 96
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 97
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoBroDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 98
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 99
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 100
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 101
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 102
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 103
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 104
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 105
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 106
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 107
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 108
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 109
%ebo:5, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaSisDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 110
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 111
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 112
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 113
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 114
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 115
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 116
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 117
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoBroDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 118
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 119
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 120
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 121
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 122
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 123
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 124
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 125
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 126
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 127
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 128
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 129
%ebo:5, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaSisDaDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 130
%ebo:5, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E), younger(E, Ego).
;; 131
%ebo:5, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E), younger(E, Ego).
;; 132
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 133
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 134
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 135
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 136
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 137
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 138
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 139
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoBroDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 140
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 141
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 142
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 143
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 144
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 145
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 146
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 147
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 148
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 149
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 150
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 151
%ebo:5, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaSisDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 152
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 153
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 154
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 155
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), husband(Alter, G), younger(G, Ego).
;; 156
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 157
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 158
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 159
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoBroDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 160
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 161
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 162
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 163
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 164
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 165
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 166
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 167
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 168
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 169
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisSoDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 170
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).
;; 171
%ebo:5, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaSisDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), daughter(I, H), husband(Alter, I), younger(I, Ego).


generation[aux]02(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]02gs(B, A), child(Alter, B).
;; 0
%generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]02gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]02gs(B, A), children(Alter, B).
;; 0
%generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]02junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]02junior(B, A), child(Alter, B).
;; 0
%generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]02junior:1, parents:0, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]02junior:1, parents:0, generation[aux]02junior:1, parents:0, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]02junior:1, parents:0, generation[aux]02junior:1, parents:1, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]02junior:1, parents:1, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]02junior:1, parents:1, generation[aux]02junior:1, parents:0, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]02junior:1, parents:1, generation[aux]02junior:1, parents:1, generation[aux]02junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]02senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]02senior(B, A), child(Alter, B).
;; 0
%generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]02senior:1, parents:0, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]02senior:1, parents:0, generation[aux]02senior:1, parents:0, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]02senior:1, parents:0, generation[aux]02senior:1, parents:1, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]02senior:1, parents:1, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]02senior:1, parents:1, generation[aux]02senior:1, parents:0, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]02senior:1, parents:1, generation[aux]02senior:1, parents:1, generation[aux]02senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


generation[aux]02small(Alter, Ego) :-  sibling(Alter, Ego).
                                   |   parents(A, Ego), siblings(B, A), child(Alter, B).
;; 0
%generation[aux]02small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).


generation[aux]02smallGS(Alter, Ego) :-  siblings(Alter, Ego).
                                     |   parents(A, Ego), siblings(B, A), children(Alter, B).
;; 0
%generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


ginau(Alter, Ego) :-  ginau[aux]02(Alter, Ego).
                  |   ginau[aux]02(Ego, Alter).
{"BroSoWi_BroWi_FaBroDaSoWi_FaBroSoSoWi_FaBroSoWi_FaFaBroDaSoWi_FaFaBroSoSoWi_FaFaSisDaSoWi_FaFaSisSoSoWi_FaMoBroDaSoWi_FaMoBroSoSoWi_FaMoSisDaSoWi_FaMoSisSoSoWi_FaSisDaSoWi_FaSisSoSoWi_FaSisSoWi_HuBro_HuFa_HuFaBro_HuFaBroSo_HuFaFaBroDa_HuFaFaBroDaSo_HuFaFaBroSo_HuFaFaBroSoSo_HuFaFaSisDa_HuFaFaSisDaSo_HuFaFaSisSo_HuFaFaSisSoSo_HuFaMoBroDa_HuFaMoBroDaSo_HuFaMoBroSo_HuFaMoBroSoSo_HuFaMoSisDa_HuFaMoSisDaSo_HuFaMoSisSo_HuFaMoSisSoSo_HuFaSis_HuFaSisSo_HuMo_HuMoBro_HuMoBroSo_HuMoFaBroDa_HuMoFaBroDaSo_HuMoFaBroSo_HuMoFaBroSoSo_HuMoFaSisDa_HuMoFaSisDaSo_HuMoFaSisSo_HuMoFaSisSoSo_HuMoMoBroDa_HuMoMoBroDaSo_HuMoMoBroSo_HuMoMoBroSoSo_HuMoMoSisDa_HuMoMoSisDaSo_HuMoMoSisSo_HuMoMoSisSoSo_HuMoSis_HuMoSisSo_MoBroDaSoWi_MoBroSoSoWi_MoBroSoWi_MoFaBroDaSoWi_MoFaBroSoSoWi_MoFaSisDaSoWi_MoFaSisSoSoWi_MoMoBroDaSoWi_MoMoBroSoSoWi_MoMoSisDaSoWi_MoMoSisSoSoWi_MoSisDaSoWi_MoSisSoSoWi_MoSisSoWi_SisSoWi_SoWi"}
;; 0
%ginau:0, ginau[aux]02:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 wife(Ego, A), mother(Alter, A).
;; 1
%ginau:0, ginau[aux]02:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 wife(Ego, A), father(Alter, A).
;; 2
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoBroSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 5
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoBroDa}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 6
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 8
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 9
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 10
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 11
%ginau:0, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisDa}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 12
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 13
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 14
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoBroSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 15
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoBroDa}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 16
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 17
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 18
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroDa}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 20
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaSisSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 21
%ginau:0, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaSisDa}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 22
%ginau:0, ginau[aux]02:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 wife(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 23
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, A).
;; 24
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 25
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 26
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 27
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 28
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 29
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 30
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 31
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 32
%ginau:0, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 33
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, A).
;; 34
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 35
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 36
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 37
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 38
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 39
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 40
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 41
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 42
%ginau:0, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 43
%ginau:1, ginau[aux]02:0, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 wife(Alter, A), mother(Ego, A).
;; 44
%ginau:1, ginau[aux]02:0, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 wife(Alter, A), father(Ego, A).
;; 45
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 46
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 47
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 48
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 49
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 50
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 51
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 52
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 53
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 54
%ginau:1, ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 55
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 56
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 57
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 58
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 59
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 60
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 61
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Ego, F).
;; 62
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Ego, F).
;; 63
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 64
%ginau:1, ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F).
;; 65
%ginau:1, ginau[aux]02:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 wife(Alter, A), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), elder(Ego, A).
;; 66
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), elder(Ego, A).
;; 67
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), elder(Ego, A).
;; 68
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 69
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 70
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 71
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 72
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 73
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 74
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 75
%ginau:1, ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  wife(Alter, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 76
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), elder(Ego, A).
;; 77
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), elder(Ego, A).
;; 78
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 79
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 80
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 81
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  wife(Alter, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 82
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 83
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), elder(Ego, A).
;; 84
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Ego, G), elder(Ego, A).
;; 85
%ginau:1, ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  wife(Alter, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Ego, G), elder(Ego, A).


ginau[aux]02(Alter, Ego) :-  wife(Ego, A), parents(Alter, A).
                         |  [ext],  wife(Ego, A), parents(B, A), generation[aux]02smallGS(Alter, B).
                         |   wife(Ego, A), sibling(Alter, A), male(Alter), elder(Alter, A).
                         |  [ext],  wife(Ego, A), parents(B, A), generation[aux]02smallGS(C, B), son(Alter, C), elder(Alter, A).
;; 0
%ginau[aux]02:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(Ego, A), mother(Alter, A).
;; 1
%ginau[aux]02:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(Ego, A), father(Alter, A).
;; 2
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 5
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 6
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 8
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 9
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 10
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 11
%ginau[aux]02:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 12
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 13
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 14
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 15
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 16
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 17
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 18
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 19
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 20
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 21
%ginau[aux]02:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 22
%ginau[aux]02:2, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 23
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, A).
;; 24
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 25
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 26
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 27
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 28
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 29
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 30
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 31
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 32
%ginau[aux]02:3, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 33
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E), elder(Alter, A).
;; 34
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 35
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 36
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 37
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 38
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 39
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 40
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G), elder(Alter, A).
;; 41
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G), elder(Alter, A).
;; 42
%ginau[aux]02:3, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G), elder(Alter, A).


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


iye(Alter, Ego) :-  mother(Alter, Ego).
                |   iye[aux]02(Alter, Ego).
{"FaBroWi_FaFaBroDa_FaFaBroSoWi_FaFaFaBroDaDa_FaFaFaBroDaSoWi_FaFaFaBroSoDa_FaFaFaBroSoSoWi_FaFaFaSisDaDa_FaFaFaSisDaSoWi_FaFaFaSisSoDa_FaFaFaSisSoSoWi_FaFaMoBroDaDa_FaFaMoBroDaSoWi_FaFaMoBroSoDa_FaFaMoBroSoSoWi_FaFaMoSisDaDa_FaFaMoSisDaSoWi_FaFaMoSisSoDa_FaFaMoSisSoSoWi_FaFaSisDa_FaFaSisSoWi_FaMoBroDa_FaMoBroSoWi_FaMoFaBroDaDa_FaMoFaBroDaSoWi_FaMoFaBroSoDa_FaMoFaBroSoSoWi_FaMoFaSisDaDa_FaMoFaSisDaSoWi_FaMoFaSisSoDa_FaMoFaSisSoSoWi_FaMoMoBroDaDa_FaMoMoBroDaSoWi_FaMoMoBroSoDa_FaMoMoBroSoSoWi_FaMoMoSisDaDa_FaMoMoSisDaSoWi_FaMoMoSisSoDa_FaMoMoSisSoSoWi_FaMoSisDa_FaMoSisSoWi_FaSis_HuMo_Mo_MoBroWi_MoFaBroDa_MoFaBroSoWi_MoFaFaBroDaDa_MoFaFaBroDaSoWi_MoFaFaBroSoDa_MoFaFaBroSoSoWi_MoFaFaSisDaDa_MoFaFaSisDaSoWi_MoFaFaSisSoDa_MoFaFaSisSoSoWi_MoFaMoBroDaDa_MoFaMoBroDaSoWi_MoFaMoBroSoDa_MoFaMoBroSoSoWi_MoFaMoSisDaDa_MoFaMoSisDaSoWi_MoFaMoSisSoDa_MoFaMoSisSoSoWi_MoFaSisDa_MoFaSisSoWi_MoMoBroDa_MoMoBroSoWi_MoMoFaBroDaDa_MoMoFaBroDaSoWi_MoMoFaBroSoDa_MoMoFaBroSoSoWi_MoMoFaSisDaDa_MoMoFaSisDaSoWi_MoMoFaSisSoDa_MoMoFaSisSoSoWi_MoMoMoBroDaDa_MoMoMoBroDaSoWi_MoMoMoBroSoDa_MoMoMoBroSoSoWi_MoMoMoSisDaDa_MoMoMoSisDaSoWi_MoMoMoSisSoDa_MoMoMoSisSoSoWi_MoMoSisDa_MoMoSisSoWi_MoSis_WiMo"}
;; 0
%iye:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%iye:1, iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 22
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 23
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 24
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 25
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 26
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 27
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 28
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 29
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 30
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 31
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 32
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 33
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 34
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 35
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 36
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 37
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 38
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 39
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 40
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 41
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 42
%iye:1, iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 43
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 44
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 45
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 46
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 47
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 48
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 49
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 50
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 51
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 52
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 53
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 54
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 55
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 56
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 57
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 58
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 59
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 60
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 61
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 62
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisSoSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 63
%iye:1, iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 64
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 65
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 66
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 67
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 68
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 69
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 70
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 71
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 72
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 73
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 74
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 75
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 76
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 77
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 78
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 79
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 80
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 81
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 82
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 83
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 84
%iye:1, iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 85
%iye:1, iye[aux]02:2, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
[ext],  husband(A, Ego), mother(Alter, A).
;; 86
%iye:1, iye[aux]02:2, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
[ext],  wife(A, Ego), mother(Alter, A).


iye[aux]02(Alter, Ego) :- [ext],  parents(A, Ego), generation[aux]02(Alter, A), female(Alter).
                       |  [ext],  parents(A, Ego), generation[aux]02(B, A), wife(Alter, B).
                       |  [ext],  spice(A, Ego), mother(Alter, A).
;; 0
%iye[aux]02:0, parents:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%iye[aux]02:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 21
%iye[aux]02:0, parents:1, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 22
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 23
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 24
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 25
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 26
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 27
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 28
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 29
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 30
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 31
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 32
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 33
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 34
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 35
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 36
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 37
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 38
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 39
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 40
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 41
%iye[aux]02:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 42
%iye[aux]02:1, parents:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 43
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 44
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 45
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 46
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 47
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 48
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 49
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 50
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 51
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 52
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 53
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 54
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 55
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 56
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 57
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 58
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 59
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 60
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 61
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 62
%iye[aux]02:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 63
%iye[aux]02:1, parents:1, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D).
;; 64
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 65
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 66
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 67
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 68
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 69
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 70
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 71
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 72
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 73
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 74
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F).
;; 75
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F).
;; 76
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 77
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 78
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 79
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 80
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), wife(Alter, H).
;; 81
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 82
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), wife(Alter, H).
;; 83
%iye[aux]02:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), wife(Alter, H).
;; 84
%iye[aux]02:2, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(Alter, A).
;; 85
%iye[aux]02:2, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(Alter, A).


iye[aux]02sr(Alter, Ego) :- [ext],  parents(A, Ego), generation[aux]02(Alter, A), female(Alter), elder(Alter, A).
                         |  [ext],  parents(A, Ego), generation[aux]02(B, A), wife(Alter, B), elder(Alter, A).
;; 0
%iye[aux]02sr:0, parents:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 1
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 2
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 3
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 4
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 5
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 6
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 7
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 8
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 9
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 10
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 11
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 12
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 13
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 14
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 15
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 16
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 17
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 18
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 19
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 20
%iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 21
%iye[aux]02sr:0, parents:1, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 22
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 23
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 24
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 25
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 26
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 27
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 28
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 29
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 30
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 31
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 32
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 33
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 34
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 35
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 36
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 37
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 38
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 39
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 40
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 41
%iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 42
%iye[aux]02sr:1, parents:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D), elder(Alter, A).
;; 43
%iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 44
%iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 45
%iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 46
%iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 47
%iye[aux]02sr:1, parents:1, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D), elder(Alter, A).
;; 48
%iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 49
%iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 50
%iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 51
%iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).


maame(Alter, Ego) :-  mother(A, Ego), cross_gen[aux]02(Alter, A).
                  |  [ext],  father(A, Ego), cross_gen[aux]02(B, A), husband(Alter, B).
{"FaFaBroDaHu_FaFaFaBroDaDaHu_FaFaFaBroSoDaHu_FaFaFaSisDaDaHu_FaFaMoBroDaDaHu_FaFaMoSisDaDaHu_FaFaMoSisSoDaHu_FaFaSisDaHu_FaMoBroDaHu_FaMoFaBroDaDaHu_FaMoFaBroSoDaHu_FaMoFaSisSoDaHu_FaMoMoBroSoDaHu_FaMoMoSisDaDaHu_FaMoMoSisSoDaHu_FaMoSisDaHu_FaSisHu_MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaMoBroDaSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisSoSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo"}
;; 0
%maame:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%maame:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 2
%maame:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(K, Alter), not(equal(J, K)).
;; 3
%maame:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(K, Alter), not(equal(J, K)).
;; 4
%maame:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 5
%maame:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(K, Alter), not(equal(J, K)).
;; 6
%maame:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(K, Alter), not(equal(J, K)).
;; 7
%maame:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), gender(H, A), gender(I, Alter), not(equal(H, I)).
;; 8
%maame:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, A), gender(L, Alter), not(equal(K, L)).
;; 9
%maame:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, A), gender(L, Alter), not(equal(K, L)).
;; 10
%maame:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), gender(L, A), gender(M, Alter), not(equal(L, M)).
;; 11
%maame:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), gender(L, A), gender(M, Alter), not(equal(L, M)).
;; 12
%maame:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), gender(H, A), gender(I, Alter), not(equal(H, I)).
;; 13
%maame:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, A), gender(L, Alter), not(equal(K, L)).
;; 14
%maame:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), gender(K, A), gender(L, Alter), not(equal(K, L)).
;; 15
%maame:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), gender(L, A), gender(M, Alter), not(equal(L, M)).
;; 16
%maame:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), gender(L, A), gender(M, Alter), not(equal(L, M)).
;; 17
%maame:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), husband(Alter, D).
;; 18
%maame:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), husband(Alter, G).
;; 19
%maame:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), husband(Alter, J).
;; 20
%maame:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), husband(Alter, J).
;; 21
%maame:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(I, G), not(equal(H, I)), husband(Alter, G).
;; 22
%maame:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), husband(Alter, J).
;; 23
%maame:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(L, J), not(equal(K, L)), husband(Alter, J).
;; 24
%maame:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), husband(Alter, H).
;; 25
%maame:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), husband(Alter, K).
;; 26
%maame:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), husband(Alter, K).
;; 27
%maame:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(L, I), gender(M, A), gender(N, L), not(equal(M, N)), husband(Alter, L).
;; 28
%maame:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(L, I), gender(M, A), gender(N, L), not(equal(M, N)), husband(Alter, L).
;; 29
%maame:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(H, E), gender(I, A), gender(J, H), not(equal(I, J)), husband(Alter, H).
;; 30
%maame:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), husband(Alter, K).
;; 31
%maame:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(J, H), not(equal(I, J)), child(K, H), gender(L, A), gender(M, K), not(equal(L, M)), husband(Alter, K).
;; 32
%maame:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:0, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(L, I), gender(M, A), gender(N, L), not(equal(M, N)), husband(Alter, L).
;; 33
%maame:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:2, parents:1, cross_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisDaDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(H, F), not(equal(G, H)), child(I, F), gender(J, B), gender(K, I), not(equal(J, K)), child(L, I), gender(M, A), gender(N, L), not(equal(M, N)), husband(Alter, L).


muna(Alter, Ego) :-  husband(Ego, A), mother(Alter, A).
                 |   husband(Ego, A), sister(Alter, A), elder(Alter, A).
                 |  [ext],  husband(Ego, A), mother(B, A), generation[aux]02gs(Alter, B).
                 |  [ext],  husband(Ego, A), parents(B, A), generation[aux]02gs(C, B), daughter(Alter, C), elder(Alter, A).
{"WiFaBroDa_WiFaFaBroDaDa_WiFaFaBroSoDa_WiFaFaSisDaDa_WiFaFaSisSoDa_WiFaMoBroDaDa_WiFaMoBroSoDa_WiFaMoSisDaDa_WiFaMoSisSoDa_WiFaSisDa_WiMo_WiMoBro_WiMoBroDa_WiMoFaBroDa_WiMoFaBroDaDa_WiMoFaBroSo_WiMoFaBroSoDa_WiMoFaFaBroDaDa_WiMoFaFaBroDaSo_WiMoFaFaBroSoDa_WiMoFaFaBroSoSo_WiMoFaFaSisDaDa_WiMoFaFaSisDaSo_WiMoFaFaSisSoDa_WiMoFaFaSisSoSo_WiMoFaMoBroDaDa_WiMoFaMoBroDaSo_WiMoFaMoBroSoDa_WiMoFaMoBroSoSo_WiMoFaMoSisDaDa_WiMoFaMoSisDaSo_WiMoFaMoSisSoDa_WiMoFaMoSisSoSo_WiMoFaSisDa_WiMoFaSisDaDa_WiMoFaSisSo_WiMoFaSisSoDa_WiMoMoBroDa_WiMoMoBroDaDa_WiMoMoBroSo_WiMoMoBroSoDa_WiMoMoFaBroDaDa_WiMoMoFaBroDaSo_WiMoMoFaBroSoDa_WiMoMoFaBroSoSo_WiMoMoFaSisDaDa_WiMoMoFaSisDaSo_WiMoMoFaSisSoDa_WiMoMoFaSisSoSo_WiMoMoMoBroDaDa_WiMoMoMoBroDaSo_WiMoMoMoBroSoDa_WiMoMoMoBroSoSo_WiMoMoMoSisDaDa_WiMoMoMoSisDaSo_WiMoMoMoSisSoDa_WiMoMoMoSisSoSo_WiMoMoSisDa_WiMoMoSisDaDa_WiMoMoSisSo_WiMoMoSisSoDa_WiMoSis_WiMoSisDa_WiSis"}
;; 0
%muna:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 husband(Ego, A), mother(Alter, A).
;; 1
%muna:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 husband(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 2
%muna:2, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%muna:2, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 5
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 6
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 8
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroSoSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 9
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 10
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroDaSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 11
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 12
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisSoSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 13
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 14
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 15
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 16
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroSoSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 17
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 18
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 19
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 20
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisSoSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 21
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 22
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisDaSo}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 23
%muna:2, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 24
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 25
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(Alter, F).
;; 26
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 27
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 28
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroSoSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 29
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 30
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroDaSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 31
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 32
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 33
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 34
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisDaSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 35
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 36
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(Alter, H).
;; 37
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(Alter, H).
;; 38
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(Alter, H).
;; 39
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(Alter, H).
;; 40
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisSoSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(Alter, H).
;; 41
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).
;; 42
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisDaSo}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(Alter, H).
;; 43
%muna:2, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 44
%muna:3, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, A).
;; 45
%muna:3, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), elder(Alter, A).
;; 46
%muna:3, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 47
%muna:3, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 48
%muna:3, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 49
%muna:3, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 50
%muna:3, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 51
%muna:3, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 52
%muna:3, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 53
%muna:3, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
[ext],  husband(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 54
%muna:3, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E), elder(Alter, A).
;; 55
%muna:3, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), elder(Alter, A).
;; 56
%muna:3, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 57
%muna:3, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 58
%muna:3, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 59
%muna:3, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
[ext],  husband(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 60
%muna:3, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 61
%muna:3, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).
;; 62
%muna:3, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G), elder(Alter, A).
;; 63
%muna:3, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
[ext],  husband(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G), elder(Alter, A).


musa(Alter, Ego) :-  musa[aux]02(Alter, Ego).
                 |   musa[aux]02(Ego, Alter).
{"BroWi_FaBroDaHu_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDaHu_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDaHu_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDaHu_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDaHu_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_HuFaBroDa_HuFaFaBroDaDa_HuFaFaBroSoDa_HuFaFaSisDaDa_HuFaFaSisSoDa_HuFaMoBroDaDa_HuFaMoBroSoDa_HuFaMoSisDaDa_HuFaMoSisSoDa_HuFaSisDa_HuMoBroDa_HuMoFaBroDaDa_HuMoFaBroSoDa_HuMoFaSisDaDa_HuMoFaSisSoDa_HuMoMoBroDaDa_HuMoMoBroSoDa_HuMoMoSisDaDa_HuMoMoSisSoDa_HuMoSisDa_HuSis_MoBroDaHu_MoBroSoWi_MoFaBroDaDaHu_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDaHu_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDaHu_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiBro_WiFaBroSo_WiFaFaBroDaSo_WiFaFaBroSoSo_WiFaFaSisDaSo_WiFaFaSisSoSo_WiFaMoBroDaSo_WiFaMoBroSoSo_WiFaMoSisDaSo_WiFaMoSisSoSo_WiFaSisSo_WiMoBroSo_WiMoFaBroDaSo_WiMoFaBroSoSo_WiMoFaSisDaSo_WiMoFaSisSoSo_WiMoMoBroDaSo_WiMoMoBroSoSo_WiMoMoSisDaSo_WiMoMoSisSoSo_WiMoSisSo"}
;; 0
%musa:0, musa[aux]02:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 1
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 2
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 3
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 4
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 5
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 6
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 7
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 8
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 9
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 10
%musa:0, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 11
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 12
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 13
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 14
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 15
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 16
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 17
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 18
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 19
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 20
%musa:0, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 21
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 22
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 23
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 24
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 25
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 26
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 27
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 28
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 29
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 30
%musa:0, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 31
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 32
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 33
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 34
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 35
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 36
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 37
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 38
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 39
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 40
%musa:0, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 41
%musa:1, musa[aux]02:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), spouse(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Alter), gender(D, Ego).
;; 42
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 43
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 44
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 45
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 46
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 47
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 48
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 49
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 50
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 51
%musa:1, musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 52
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 53
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 54
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 55
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 56
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 57
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 58
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 59
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 60
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 61
%musa:1, musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 62
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 63
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 64
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 65
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 66
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 67
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 68
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 69
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 70
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 71
%musa:1, musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 72
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 73
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, Alter), gender(F, Ego).
;; 74
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 75
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 76
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 77
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 78
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 79
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 80
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 81
%musa:1, musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, Alter), gender(H, Ego).
;; 82
%musa:0, musa[aux]02:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 83
%musa:1, musa[aux]02:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), spouse(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Alter), gender(D, Ego).


musa[aux]02(Alter, Ego) :-  spouse(A, Ego), sibling(Alter, A), gender(B, Ego), gender(B, Alter).
                        |  [ext],  spice(A, Ego), parents(B, A), generation[aux]02smallGS(C, B), child(Alter, C), gender(D, Ego), gender(D, Alter).
;; 0
%musa[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).
;; 1
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 2
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 3
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 4
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 5
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 6
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 7
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 8
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 9
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 10
%musa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 11
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 12
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 13
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 14
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 15
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 16
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 17
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 18
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 19
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 20
%musa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 21
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 22
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 23
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 24
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 25
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 26
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 27
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 28
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 29
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 30
%musa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 31
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 32
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, Ego), gender(F, Alter).
;; 33
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 34
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 35
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 36
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 37
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 38
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 39
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 40
%musa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, Ego), gender(H, Alter).
;; 41
%musa[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Ego), gender(D, Alter).


nausa(Alter, Ego) :-  nausa[aux]02(Alter, Ego).
                  |   nausa[aux]02(Ego, Alter).
{"BroWi_FaBroDaHu_FaBroSoWi_FaFaBroDaDaHu_FaFaBroDaSoWi_FaFaBroSoDaHu_FaFaBroSoSoWi_FaFaSisDaDaHu_FaFaSisDaSoWi_FaFaSisSoDaHu_FaFaSisSoSoWi_FaMoBroDaDaHu_FaMoBroDaSoWi_FaMoBroSoDaHu_FaMoBroSoSoWi_FaMoSisDaDaHu_FaMoSisDaSoWi_FaMoSisSoDaHu_FaMoSisSoSoWi_FaSisDaHu_FaSisSoWi_HuBro_HuFaBroSo_HuFaFaBroDaSo_HuFaFaBroSoSo_HuFaFaSisDaSo_HuFaFaSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoSo_HuFaMoSisDaSo_HuFaMoSisSoSo_HuFaSisSo_HuMoBroSo_HuMoFaBroDaSo_HuMoFaBroSoSo_HuMoFaSisDaSo_HuMoFaSisSoSo_HuMoMoBroDaSo_HuMoMoBroSoSo_HuMoMoSisDaSo_HuMoMoSisSoSo_HuMoSisSo_MoBroDaHu_MoBroSoWi_MoFaBroDaDaHu_MoFaBroDaSoWi_MoFaBroSoDaHu_MoFaBroSoSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoFaSisSoDaHu_MoFaSisSoSoWi_MoMoBroDaDaHu_MoMoBroDaSoWi_MoMoBroSoDaHu_MoMoBroSoSoWi_MoMoSisDaDaHu_MoMoSisDaSoWi_MoMoSisSoDaHu_MoMoSisSoSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiFaBroDa_WiFaFaBroDaDa_WiFaFaBroSoDa_WiFaFaSisDaDa_WiFaFaSisSoDa_WiFaMoBroDaDa_WiFaMoBroSoDa_WiFaMoSisDaDa_WiFaMoSisSoDa_WiFaSisDa_WiMoBroDa_WiMoFaBroDaDa_WiMoFaBroSoDa_WiMoFaSisDaDa_WiMoFaSisSoDa_WiMoMoBroDaDa_WiMoMoBroSoDa_WiMoMoSisDaDa_WiMoMoSisSoDa_WiMoSisDa_WiSis"}
;; 0
%nausa:0, nausa[aux]02:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 1
%nausa:0, nausa[aux]02:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 2
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 3
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 4
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 5
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 6
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 7
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 8
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 9
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 10
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 11
%nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 12
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 13
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 14
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 15
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 16
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 17
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 18
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 19
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 20
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 21
%nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 22
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 23
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 24
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 25
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 26
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 27
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 28
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 29
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 30
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 31
%nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 32
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 33
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 34
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 35
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 36
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 37
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 38
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 39
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 40
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 41
%nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 42
%nausa:1, nausa[aux]02:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 husband(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(D, Ego), younger(Ego, A).
;; 43
%nausa:1, nausa[aux]02:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 wife(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(D, Ego), younger(Ego, A).
;; 44
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 45
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 46
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 47
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 48
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 49
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 50
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 51
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 52
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 53
%nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 54
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 55
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 56
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 57
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 58
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 59
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 60
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 61
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 62
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 63
%nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 64
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 65
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 66
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 67
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 68
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 69
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 70
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 71
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 72
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 73
%nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 74
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 75
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 76
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 77
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 78
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 79
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 80
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 81
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 82
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 83
%nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).


nausa[aux]02(Alter, Ego) :-  spice(A, Ego), sibling(Alter, A), gender(B, A), gender(B, Alter), younger(Alter, A).
                         |  [ext],  spice(A, Ego), parents(B, A), generation[aux]02smallGS(C, B), child(Alter, C), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 0
%nausa[aux]02:0, spice:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 1
%nausa[aux]02:0, spice:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 2
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 3
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 4
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 5
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 6
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 7
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 8
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 9
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 10
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 11
%nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 12
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 13
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 14
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 15
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 16
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 17
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 18
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 19
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 20
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 21
%nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 22
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 23
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 24
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 25
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 26
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 27
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 28
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 29
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 30
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 31
%nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 32
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 33
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 34
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 35
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 36
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 37
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 38
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 39
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 40
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 41
%nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).


nemeltene(Alter, Ego) :-  male(Ego), sister(A, Ego), children(Alter, A).
                      |  [ext],  male(Ego), parents(A, Ego), generation[aux]02smallGS(B, A), daughter(C, B), children(Alter, C).
                      |  [ext],  wife(A, Ego), generation[aux]02small(B, A), mother(B, Alter), male(Alter).
                      |  [ext],  wife(A, Ego), generation[aux]02small(B, A), mother(B, Alter), female(Alter).
{"FaBroDaDa_FaBroDaSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo_WiFaBroDaDa_WiFaBroDaSo_WiFaSisDaDa_WiFaSisDaSo_WiMoBroDaDa_WiMoBroDaSo_WiMoSisDaDa_WiMoSisDaSo_WiSisDa_WiSisSo"}
;; 0
%nemeltene:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%nemeltene:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%nemeltene:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%nemeltene:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%nemeltene:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 5
%nemeltene:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 6
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 7
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 8
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 9
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 10
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 11
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 12
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 13
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 14
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 15
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 16
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 17
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 18
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 19
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 20
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 21
%nemeltene:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 22
%nemeltene:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 23
%nemeltene:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 24
%nemeltene:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 25
%nemeltene:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 26
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 27
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 28
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 29
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 30
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 31
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 32
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 33
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 34
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 35
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 36
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 37
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 38
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 39
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 40
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 41
%nemeltene:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 42
%nemeltene:2, generation[aux]02small:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), mother(D, Alter), male(Alter).
;; 43
%nemeltene:2, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), mother(F, Alter), male(Alter).
;; 44
%nemeltene:2, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), mother(F, Alter), male(Alter).
;; 45
%nemeltene:2, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), mother(F, Alter), male(Alter).
;; 46
%nemeltene:2, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), mother(F, Alter), male(Alter).
;; 47
%nemeltene:3, generation[aux]02small:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), mother(D, Alter), female(Alter).
;; 48
%nemeltene:3, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), mother(F, Alter), female(Alter).
;; 49
%nemeltene:3, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), mother(F, Alter), female(Alter).
;; 50
%nemeltene:3, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), mother(F, Alter), female(Alter).
;; 51
%nemeltene:3, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), mother(F, Alter), female(Alter).


niye(Alter, Ego) :-  uwa[aux]02sr(Alter, Ego).
                 |   iye[aux]02sr(Alter, Ego).
                 |   sister(A, Ego), younger(A, Ego), children(Alter, A), female(Ego).
{"FaBro_FaBroWi_FaFaBroDa_FaFaBroSo_FaFaBroSoWi_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaBroSoSo_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaMoSisSoSo_FaFaSisDa_FaFaSisSoWi_FaMoBroDa_FaMoBroSoWi_FaMoFaBroDaDa_FaMoFaBroDaSo_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisDaSo_FaMoMoSisSoDa_FaMoSisDa_FaMoSisSo_FaMoSisSoWi_FaSis_MoBroWi_MoFaBroDa_MoFaBroDaHu_MoFaBroSoWi_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaBroSoDaHu_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaMoSisSoDaHu_MoFaSisDa_MoFaSisSoWi_MoMoBroDa_MoMoBroSoWi_MoMoFaBroDaDa_MoMoFaBroDaDaHu_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisDaDaHu_MoMoMoSisSoDa_MoMoSisDa_MoMoSisDaHu_MoMoSisSoWi_MoSis_MoSisHu_SisDa_SisSo"}
;; 0
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A).
;; 1
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 2
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 3
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 4
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 5
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 6
%niye:0, uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 7
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), husband(Alter, D), elder(Alter, A).
;; 8
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G), elder(Alter, A).
;; 9
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 10
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 11
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G), elder(Alter, A).
;; 12
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 13
%niye:0, uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 14
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 15
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 16
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 17
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 18
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 19
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 20
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 21
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 22
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 23
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 24
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 25
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 26
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 27
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 28
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 29
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 30
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 31
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 32
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 33
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 34
%niye:1, iye[aux]02sr:0, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 35
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 36
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 37
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 38
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 39
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 40
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 41
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 42
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 43
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 44
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 45
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 46
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 47
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 48
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 49
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 50
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 51
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 52
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 53
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 54
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 55
%niye:1, iye[aux]02sr:0, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 56
%niye:1, iye[aux]02sr:1, parents:0, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D), elder(Alter, A).
;; 57
%niye:1, iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 58
%niye:1, iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 59
%niye:1, iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 60
%niye:1, iye[aux]02sr:1, parents:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 61
%niye:1, iye[aux]02sr:1, parents:1, generation[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), wife(Alter, D), elder(Alter, A).
;; 62
%niye:1, iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 63
%niye:1, iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 64
%niye:1, iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 65
%niye:1, iye[aux]02sr:1, parents:1, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), wife(Alter, F), elder(Alter, A).
;; 66
%niye:2, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), younger(C, Ego), son(Alter, C), female(Ego).
;; 67
%niye:2, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), younger(C, Ego), daughter(Alter, C), female(Ego).


oso(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
                |  [ext],  parents(A, Ego), generation[aux]02gs(B, A), children(Alter, B), younger(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%oso:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%oso:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%oso:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 3
%oso:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 4
%oso:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 5
%oso:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 6
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 7
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 8
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 9
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 10
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 11
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 12
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 13
%oso:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 14
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 15
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 16
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 17
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 18
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 19
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 20
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 21
%oso:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 22
%oso:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), younger(Alter, Ego).
;; 23
%oso:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(Alter, Ego).
;; 24
%oso:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), younger(Alter, Ego).
;; 25
%oso:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), younger(Alter, Ego).
;; 26
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 27
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 28
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 29
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 30
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 31
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 32
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 33
%oso:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 34
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 35
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 36
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 37
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 38
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), younger(Alter, Ego).
;; 39
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), younger(Alter, Ego).
;; 40
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), younger(Alter, Ego).
;; 41
%oso:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), younger(Alter, Ego).


para_gen[aux]02(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(A, Alter).
                            |   parents(A, Ego), para_gen[aux]02(B, A), child(Alter, B), gender(C, Ego), gender(C, Alter).
;; 0
%para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 1
%para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 2
%para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 3
%para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 4
%para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 5
%para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 6
%para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 7
%para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 8
%para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 9
%para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 10
%para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 11
%para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 12
%para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).
;; 13
%para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), child(Alter, G), gender(I, Ego), gender(I, Alter).


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


square[aux]02(Alter, Ego) :-  generation[aux]02(Alter, Ego).
                          |   parents(Alter, Ego).
                          |   parents(A, Ego), square[aux]02(Alter, A).
;; 0
%square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 86
%square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 87
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 88
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 89
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 90
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 91
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 92
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 93
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 94
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 95
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 96
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 97
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 98
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 99
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 100
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 101
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 102
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 103
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 104
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 105
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 106
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 107
%square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 108
%square[aux]02:2, parents:0, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 109
%square[aux]02:2, parents:0, square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 110
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 111
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 112
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 113
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 114
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 116
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 118
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 120
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 121
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 122
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 123
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 124
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 126
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 128
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 130
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 131
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 132
%square[aux]02:2, parents:0, square[aux]02:2, parents:0, square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 133
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 134
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 135
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 136
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 137
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 138
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 139
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 140
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 141
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 142
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 143
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 144
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 145
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 146
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 147
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 148
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 149
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 150
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 151
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 152
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 153
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 154
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 155
%square[aux]02:2, parents:0, square[aux]02:2, parents:1, square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 156
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 157
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 158
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 159
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 164
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 165
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 166
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 168
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 169
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 174
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 175
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 176
%square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 177
%square[aux]02:2, parents:1, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 178
%square[aux]02:2, parents:1, square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 179
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 180
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 181
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 182
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 183
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 184
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 185
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 186
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 187
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 188
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 189
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 190
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 191
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 192
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 193
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 194
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 195
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 196
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 197
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 198
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 199
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 200
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 201
%square[aux]02:2, parents:1, square[aux]02:2, parents:0, square[aux]02:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 202
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 203
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 204
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 205
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 206
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 208
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 209
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:0, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 214
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 215
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 216
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 218
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:0, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 219
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 220
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 221
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 222
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:0, generation[aux]02:1, parents:1, generation[aux]02gs:1, parents:1, generation[aux]02gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 223
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 224
%square[aux]02:2, parents:1, square[aux]02:2, parents:1, square[aux]02:1, parents:1%
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


suina(Alter, Ego) :-  nausa(Alter, Ego).
;; 0
%suina:0, nausa:0, nausa[aux]02:0, spice:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 1
%suina:0, nausa:0, nausa[aux]02:0, spice:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 2
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 3
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 4
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 5
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 6
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 7
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 8
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 9
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 10
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 11
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 12
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 13
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 14
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 15
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 16
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 17
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 18
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 19
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 20
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 21
%suina:0, nausa:0, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 22
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 23
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 24
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 25
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 26
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 27
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 28
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 29
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 30
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 31
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 32
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 33
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), gender(F, A), gender(F, Alter), younger(Alter, A).
;; 34
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 35
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 36
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 37
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 38
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 39
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 40
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 41
%suina:0, nausa:0, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), gender(H, A), gender(H, Alter), younger(Alter, A).
;; 42
%suina:0, nausa:1, nausa[aux]02:0, spice:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(D, Ego), younger(Ego, A).
;; 43
%suina:0, nausa:1, nausa[aux]02:0, spice:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(D, Ego), younger(Ego, A).
;; 44
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 45
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 46
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 47
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 48
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 49
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 50
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 51
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 52
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 53
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 54
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 55
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 56
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 57
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 58
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 59
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 60
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 61
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 62
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 63
%suina:0, nausa:1, nausa[aux]02:1, spice:0, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 64
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 65
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 66
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 67
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 68
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 69
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 70
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 71
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 72
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 73
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 74
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 75
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), gender(F, A), gender(F, Ego), younger(Ego, A).
;; 76
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 77
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 78
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 79
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 80
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 81
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 82
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).
;; 83
%suina:0, nausa:1, nausa[aux]02:1, spice:1, parents:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), gender(H, A), gender(H, Ego), younger(Ego, A).


tane(Alter, Ego) :-  children(Alter, Ego).
                 |  [ext],  husband(A, Ego), generation[aux]02smallGS(B, A), children(Alter, B).
                 |  [ext],  wife(A, Ego), generation[aux]02small(B, A), male(B), children(Alter, B).
{"Da_HuBroDa_HuBroSo_HuFaBroDaDa_HuFaBroDaSo_HuFaBroSoDa_HuFaBroSoSo_HuFaSisDaDa_HuFaSisDaSo_HuFaSisSoDa_HuFaSisSoSo_HuMoBroDaDa_HuMoBroDaSo_HuMoBroSoDa_HuMoBroSoSo_HuMoSisDaDa_HuMoSisDaSo_HuMoSisSoDa_HuMoSisSoSo_HuSisDa_HuSisSo_So_WiBroDa_WiBroSo_WiFaBroSoDa_WiFaBroSoSo_WiFaSisSoDa_WiFaSisSoSo_WiMoBroSoDa_WiMoBroSoSo_WiMoSisSoDa_WiMoSisSoSo"}
;; 0
%tane:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%tane:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%tane:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%tane:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%tane:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%tane:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%tane:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%tane:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%tane:2, generation[aux]02small:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%tane:2, generation[aux]02small:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%tane:2, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), son(Alter, F).
;; 25
%tane:2, generation[aux]02small:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), daughter(Alter, F).
;; 26
%tane:2, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), son(Alter, F).
;; 27
%tane:2, generation[aux]02small:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), daughter(Alter, F).
;; 28
%tane:2, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), son(Alter, F).
;; 29
%tane:2, generation[aux]02small:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), daughter(Alter, F).
;; 30
%tane:2, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), son(Alter, F).
;; 31
%tane:2, generation[aux]02small:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), daughter(Alter, F).


tane_gitowai(Alter, Ego) :- [chooseLast],  son(Alter, Ego), not(husband(Alter, A), female(A)).
                         |  [ext], [chooseLast],  generation[aux]02smallGS(A, Ego), son(Alter, A), not(husband(Alter, B), female(B)).
                         |  [ext], [chooseLast],  spice(A, Ego), generation[aux]02smallGS(B, A), son(Alter, B), not(husband(Alter, C), female(C)).
{"BroSo_FaBroDaSo_FaBroSoSo_FaSisDaSo_FaSisSoSo_HuBroSo_HuFaBroDaSo_HuFaBroSoSo_HuFaSisDaSo_HuFaSisSoSo_HuMoBroDaSo_HuMoBroSoSo_HuMoSisDaSo_HuMoSisSoSo_HuSisSo_MoBroDaSo_MoBroSoSo_MoSisDaSo_MoSisSoSo_SisSo_So_WiBroSo_WiFaBroDaSo_WiFaBroSoSo_WiFaSisDaSo_WiFaSisSoSo_WiMoBroDaSo_WiMoBroSoSo_WiMoSisDaSo_WiMoSisSoSo_WiSisSo"}
;; 0
%tane_gitowai:0, (not)%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
[chooseLast],  son(Alter, Ego), not(husband(Alter, A), female(A)).
;; 1
%tane_gitowai:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C), not(husband(Alter, D), female(D)).
;; 2
%tane_gitowai:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C), not(husband(Alter, D), female(D)).
;; 3
%tane_gitowai:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 4
%tane_gitowai:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 5
%tane_gitowai:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 6
%tane_gitowai:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 7
%tane_gitowai:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 8
%tane_gitowai:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 9
%tane_gitowai:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 10
%tane_gitowai:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E), not(husband(Alter, F), female(F)).
;; 11
%tane_gitowai:2, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), not(husband(Alter, E), female(E)).
;; 12
%tane_gitowai:2, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), not(husband(Alter, E), female(E)).
;; 13
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 14
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 15
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 16
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 17
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 18
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 19
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 20
%tane_gitowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 21
%tane_gitowai:2, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D), not(husband(Alter, E), female(E)).
;; 22
%tane_gitowai:2, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D), not(husband(Alter, E), female(E)).
;; 23
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 24
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 25
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 26
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 27
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 28
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 29
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F), not(husband(Alter, G), female(G)).
;; 30
%tane_gitowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F), not(husband(Alter, G), female(G)).


tane_yafintowai(Alter, Ego) :- [chooseLast],  daughter(Alter, Ego), not(wife(Alter, A), male(A)).
                            |  [ext], [chooseLast],  generation[aux]02smallGS(A, Ego), daughter(Alter, A), not(wife(Alter, B), male(B)).
                            |  [ext], [chooseLast],  spice(A, Ego), generation[aux]02smallGS(B, A), daughter(Alter, B), not(wife(Alter, C), male(C)).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaSisDaDa_FaSisSoDa_HuBroDa_HuFaBroDaDa_HuFaBroSoDa_HuFaSisDaDa_HuFaSisSoDa_HuMoBroDaDa_HuMoBroSoDa_HuMoSisDaDa_HuMoSisSoDa_HuSisDa_MoBroDaDa_MoBroSoDa_MoSisDaDa_MoSisSoDa_SisDa_WiBroDa_WiFaBroDaDa_WiFaBroSoDa_WiFaSisDaDa_WiFaSisSoDa_WiMoBroDaDa_WiMoBroSoDa_WiMoSisDaDa_WiMoSisSoDa_WiSisDa"}
;; 0
%tane_yafintowai:0, (not)%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
[chooseLast],  daughter(Alter, Ego), not(wife(Alter, A), male(A)).
;; 1
%tane_yafintowai:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C), not(wife(Alter, D), male(D)).
;; 2
%tane_yafintowai:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext], [chooseLast],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C), not(wife(Alter, D), male(D)).
;; 3
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 4
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 5
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 6
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext], [chooseLast],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 7
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 8
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 9
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 10
%tane_yafintowai:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext], [chooseLast],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E), not(wife(Alter, F), male(F)).
;; 11
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), not(wife(Alter, E), male(E)).
;; 12
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(wife(Alter, E), male(E)).
;; 13
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 14
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 15
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 16
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
[ext], [chooseLast],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 17
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 18
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 19
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 20
%tane_yafintowai:2, spice:0, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
[ext], [chooseLast],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 21
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:0, siblings:0, brother:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), not(wife(Alter, E), male(E)).
;; 22
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:0, siblings:1, sister:0, sibling:0, (not)%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D), not(wife(Alter, E), male(E)).
;; 23
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 24
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 25
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 26
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:0, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
[ext], [chooseLast],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 27
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 28
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:0, brother:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 29
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:0, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).
;; 30
%tane_yafintowai:2, spice:1, generation[aux]02smallGS:1, parents:1, siblings:1, sister:0, sibling:0, children:1, (not)%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
[ext], [chooseLast],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F), not(wife(Alter, G), male(G)).


uwa(Alter, Ego) :-  father(Alter, Ego).
                |   uwa[aux]02(Alter, Ego).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoFaBroDaSo_FaMoMoSisDaSo_FaMoSisSo_HuFa_MoFaBroDaHu_MoFaFaBroSoDaHu_MoFaMoSisSoDaHu_MoMoFaBroDaDaHu_MoMoMoSisDaDaHu_MoMoSisDaHu_MoSisHu_WiFa"}
;; 0
%uwa:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%uwa:1, uwa[aux]02:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 2
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter).
;; 3
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 4
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 5
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter).
;; 6
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 7
%uwa:1, uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 8
%uwa:1, uwa[aux]02:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), husband(Alter, D).
;; 9
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G).
;; 10
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 11
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 12
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G).
;; 13
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 14
%uwa:1, uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 15
%uwa:1, uwa[aux]02:2, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
[ext],  husband(A, Ego), father(Alter, A).
;; 16
%uwa:1, uwa[aux]02:2, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
[ext],  wife(A, Ego), father(Alter, A).


uwa[aux]02(Alter, Ego) :- [ext],  father(A, Ego), para_gen[aux]02(Alter, A).
                       |  [ext],  mother(A, Ego), para_gen[aux]02(B, A), husband(Alter, B).
                       |  [ext],  spice(A, Ego), father(Alter, A).
;; 0
%uwa[aux]02:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 1
%uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter).
;; 2
%uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 3
%uwa[aux]02:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 4
%uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter).
;; 5
%uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 6
%uwa[aux]02:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter).
;; 7
%uwa[aux]02:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), husband(Alter, D).
;; 8
%uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G).
;; 9
%uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 10
%uwa[aux]02:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 11
%uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G).
;; 12
%uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 13
%uwa[aux]02:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J).
;; 14
%uwa[aux]02:2, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(Alter, A).
;; 15
%uwa[aux]02:2, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(Alter, A).


uwa[aux]02sr(Alter, Ego) :- [ext],  father(A, Ego), para_gen[aux]02(Alter, A), elder(Alter, A).
                         |  [ext],  mother(A, Ego), para_gen[aux]02(B, A), husband(Alter, B), elder(Alter, A).
;; 0
%uwa[aux]02sr:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A).
;; 1
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 2
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 3
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 4
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 5
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 6
%uwa[aux]02sr:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(Alter, H), gender(J, A), gender(J, Alter), elder(Alter, A).
;; 7
%uwa[aux]02sr:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), husband(Alter, D), elder(Alter, A).
;; 8
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G), elder(Alter, A).
;; 9
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 10
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 11
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(G, E), gender(H, A), gender(H, G), husband(Alter, G), elder(Alter, A).
;; 12
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:0, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).
;; 13
%uwa[aux]02sr:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:1, parents:1, para_gen[aux]02:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, C), gender(G, F), child(H, F), gender(I, B), gender(I, H), child(J, H), gender(K, A), gender(K, J), husband(Alter, J), elder(Alter, A).


wi(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%wi:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).

