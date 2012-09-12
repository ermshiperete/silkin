;;  Horn Clause Representation of Mer Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Mer") (author, "Thomas R. Trautmann") (date, "1981-01-01") (citation, "Thomas R. Trautmann DRAVIDIAN KINSHIP, 1981, Cambridge University Press, New York") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 1)
(overlaps, (bhojai, (vahu)), (der, (jetha)), (derani, (jethani)), (jetha, (der)), (jethani, (derani)), (moti_phui, (nani_phui)), (nani_phui, (moti_phui)), (vahu, (bhojai)))
(umbrellas, (ben, (moti_ben, nani_ben)), (bhai, (moto_bhai, nano_bhai)), (kaka, (kako, moto_bap)), (mosi, (moti_mosi, nani_mosi)), (phui, (moti_phui, nani_phui)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

aii(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
{"FaMo_MoMo"}
;; 0
%aii:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%aii:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


ato(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%ato:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ato:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


banevi(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%banevi:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


bap(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%bap:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


ben(Alter, Ego) :-  sister(Alter, Ego).
                |   wife(A, Ego), brother(B, A), wife(Alter, B).
{"Sis_WiBroWi"}
;; 0
%ben:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%ben:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


bhai(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bhanej(Alter, Ego) :-  sister(A, Ego), children(Alter, A).
                   |   spice(A, Ego), brother(B, A), children(Alter, B).
                   |   male(Ego), children(A, Ego), spouse(Alter, A).
{"DaHu_HuBroDa_HuBroSo_SisDa_SisSo_SoWi_WiBroDa_WiBroSo"}
;; 0
%bhanej:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%bhanej:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%bhanej:1, spice:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%bhanej:1, spice:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%bhanej:1, spice:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%bhanej:1, spice:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%bhanej:2, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 male(Ego), son(A, Ego), spouse(Alter, A).
;; 7
%bhanej:2, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 male(Ego), daughter(A, Ego), spouse(Alter, A).


bhatriji(Alter, Ego) :-  brother(A, Ego), daughter(Alter, A).
                     |   spice(A, Ego), sister(B, A), daughter(Alter, B).
                     |   female(Ego), children(A, Ego), spouse(Alter, A).
{"BroDa_DaHu_HuSisDa_SoWi_WiSisDa"}
;; 0
%bhatriji:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 1
%bhatriji:1, spice:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%bhatriji:1, spice:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 3
%bhatriji:2, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 female(Ego), son(A, Ego), spouse(Alter, A).
;; 4
%bhatriji:2, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 female(Ego), daughter(A, Ego), spouse(Alter, A).


bhatrijo(Alter, Ego) :-  brother(A, Ego), son(Alter, A).
                     |   spice(A, Ego), sister(B, A), son(Alter, B).
{"BroSo_HuSisSo_WiSisSo"}
;; 0
%bhatrijo:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%bhatrijo:1, spice:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 2
%bhatrijo:1, spice:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


bhojai(Alter, Ego) :-  bhai(A, Ego), wife(Alter, A), elder(A, Ego).
{"BroWi"}
;; 0
%bhojai:0, bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C), elder(C, Ego).


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


der(Alter, Ego) :-  husband(A, Ego), generation[aux]30(Alter, A), younger(Alter, A), male(Alter).
{"HuBro_HuFaBroSo_HuFaFaBroDaSo_HuFaFaBroSoSo_HuFaFaSisDaSo_HuFaFaSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoSo_HuFaMoSisDaSo_HuFaMoSisSoSo_HuFaSisSo_HuMoBroSo_HuMoFaBroDaSo_HuMoFaBroSoSo_HuMoFaSisDaSo_HuMoFaSisSoSo_HuMoMoBroDaSo_HuMoMoBroSoSo_HuMoMoSisDaSo_HuMoMoSisSoSo_HuMoSisSo"}
;; 0
%der:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), male(Alter).
;; 1
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 2
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 3
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 4
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 5
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 6
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 7
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 8
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 9
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 10
%der:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 11
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 12
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 13
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 14
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 15
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 16
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 17
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 18
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 19
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 20
%der:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).


derani(Alter, Ego) :-  husband(A, Ego), generation[aux]30(B, A), younger(B, A), wife(Alter, B).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroDaSoWi_HuFaFaBroSoSoWi_HuFaFaSisDaSoWi_HuFaFaSisSoSoWi_HuFaMoBroDaSoWi_HuFaMoBroSoSoWi_HuFaMoSisDaSoWi_HuFaMoSisSoSoWi_HuFaSisSoWi_HuMoBroSoWi_HuMoFaBroDaSoWi_HuMoFaBroSoSoWi_HuMoFaSisDaSoWi_HuMoFaSisSoSoWi_HuMoMoBroDaSoWi_HuMoMoBroSoSoWi_HuMoMoSisDaSoWi_HuMoMoSisSoSoWi_HuMoSisSoWi"}
;; 0
%derani:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), wife(Alter, D).
;; 1
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), younger(F, A), wife(Alter, F).
;; 2
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), younger(F, A), wife(Alter, F).
;; 3
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 4
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 5
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 6
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 7
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 8
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 9
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 10
%derani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 11
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), younger(F, A), wife(Alter, F).
;; 12
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), younger(F, A), wife(Alter, F).
;; 13
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 14
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 15
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 16
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 17
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 18
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 19
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 20
%derani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).


dikari(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%dikari:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


dikari_ni_dikari(Alter, Ego) :-  daughter(A, Ego), daughter(Alter, A).
{"DaDa"}
;; 0
%dikari_ni_dikari:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


dikari_no_dikaro(Alter, Ego) :-  daughter(A, Ego), son(Alter, A).
{"DaSo"}
;; 0
%dikari_no_dikaro:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).


dikaro(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%dikaro:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


generation[aux]30(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]30gs(B, A), child(Alter, B).
;; 0
%generation[aux]30:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


generation[aux]30gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]30gs(B, A), children(Alter, B).
;; 0
%generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


gharvari(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%gharvari:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


gharvaro(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%gharvaro:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


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


jetha(Alter, Ego) :-  husband(A, Ego), generation[aux]30(Alter, A), elder(Alter, A), male(Alter).
{"HuBro_HuFaBroSo_HuFaFaBroDaSo_HuFaFaBroSoSo_HuFaFaSisDaSo_HuFaFaSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoSo_HuFaMoSisDaSo_HuFaMoSisSoSo_HuFaSisSo_HuMoBroSo_HuMoFaBroDaSo_HuMoFaBroSoSo_HuMoFaSisDaSo_HuMoFaSisSoSo_HuMoMoBroDaSo_HuMoMoBroSoSo_HuMoMoSisDaSo_HuMoMoSisSoSo_HuMoSisSo"}
;; 0
%jetha:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), elder(Alter, A), male(Alter).
;; 1
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 2
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 3
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 4
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 5
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 6
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 7
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 8
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 9
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 10
%jetha:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 11
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 12
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 13
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 14
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 15
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 16
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 17
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 18
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 19
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 20
%jetha:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).


jethani(Alter, Ego) :-  husband(A, Ego), generation[aux]30(B, A), elder(B, A), wife(Alter, B).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroDaSoWi_HuFaFaBroSoSoWi_HuFaFaSisDaSoWi_HuFaFaSisSoSoWi_HuFaMoBroDaSoWi_HuFaMoBroSoSoWi_HuFaMoSisDaSoWi_HuFaMoSisSoSoWi_HuFaSisSoWi_HuMoBroSoWi_HuMoFaBroDaSoWi_HuMoFaBroSoSoWi_HuMoFaSisDaSoWi_HuMoFaSisSoSoWi_HuMoMoBroDaSoWi_HuMoMoBroSoSoWi_HuMoMoSisDaSoWi_HuMoMoSisSoSoWi_HuMoSisSoWi"}
;; 0
%jethani:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), wife(Alter, D).
;; 1
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), elder(F, A), wife(Alter, F).
;; 2
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), elder(F, A), wife(Alter, F).
;; 3
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 4
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 5
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 6
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 7
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 8
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 9
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 10
%jethani:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaSoWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 11
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), elder(F, A), wife(Alter, F).
;; 12
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), elder(F, A), wife(Alter, F).
;; 13
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 14
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 15
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 16
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaSoWi}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 17
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 18
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 19
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 20
%jethani:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaSoWi}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).


kaka(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
{"FaBro"}
;; 0
%kaka:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


kako(Alter, Ego) :-  father(A, Ego), brother(Alter, A), younger(Alter, A).
{"FaBro"}
;; 0
%kako:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).


mama_ni_dikari(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(Alter, B).
{"MoBroDa"}
;; 0
%mama_ni_dikari:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


mama_no_dikaro(Alter, Ego) :-  mother(A, Ego), brother(B, A), son(Alter, B).
{"MoBroSo"}
;; 0
%mama_no_dikaro:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


mamo(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                 |   father(A, Ego), sister(B, A), husband(Alter, B).
                 |   spice(A, Ego), father(Alter, A).
{"FaSisHu_HuFa_MoBro_WiFa"}
;; 0
%mamo:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%mamo:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%mamo:2, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 3
%mamo:2, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


man(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%man:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


mosi(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
                 |   step_mother(A, Ego), brother(Alter, A).
{"MoSis_StmoBro"}
;; 0
%mosi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%mosi:1, step_mother:0, brother:0, sibling:0%
 Lvl=1,  PC=6, S=1, Star=0,  {StmoBro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


mosiai_ben(Alter, Ego) :-  mother(A, Ego), sister(B, A), daughter(Alter, B).
{"MoSisDa"}
;; 0
%mosiai_ben:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


mosiai_bhai(Alter, Ego) :-  mother(A, Ego), sister(B, A), son(Alter, B).
{"MoSisSo"}
;; 0
%mosiai_bhai:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


moti_ben(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
{"Sis"}
;; 0
%moti_ben:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).


moti_mosi(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), elder(Alter, A).
{"MoSis"}
;; 0
%moti_mosi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).


moti_phui(Alter, Ego) :-  father(A, Ego), sister(Alter, A), elder(Alter, A).
{"FaSis"}
;; 0
%moti_phui:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).


moto_bap(Alter, Ego) :-  father(A, Ego), brother(Alter, A), elder(Alter, A).
{"FaBro"}
;; 0
%moto_bap:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).


moto_bhai(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
{"Bro"}
;; 0
%moto_bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).


nanadoi(Alter, Ego) :-  nanand(A, Ego), husband(Alter, A).
{"HuFaBroDaHu_HuFaFaBroDaDaHu_HuFaFaBroSoDaHu_HuFaFaSisDaDaHu_HuFaFaSisSoDaHu_HuFaMoBroDaDaHu_HuFaMoBroSoDaHu_HuFaMoSisDaDaHu_HuFaMoSisSoDaHu_HuFaSisDaHu_HuMoBroDaHu_HuMoFaBroDaDaHu_HuMoFaBroSoDaHu_HuMoFaSisDaDaHu_HuMoFaSisSoDaHu_HuMoMoBroDaDaHu_HuMoMoBroSoDaHu_HuMoMoSisDaDaHu_HuMoMoSisSoDaHu_HuMoSisDaHu_HuSisHu"}
;; 0
%nanadoi:0, nanand:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 2
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 3
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 4
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 5
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 6
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 7
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 8
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 9
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 10
%nanadoi:0, nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 11
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 12
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 13
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 14
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 15
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 16
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 17
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 18
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 19
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 20
%nanadoi:0, nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).


nanand(Alter, Ego) :-  husband(A, Ego), generation[aux]30(Alter, A), female(Alter).
{"HuFaBroDa_HuFaFaBroDaDa_HuFaFaBroSoDa_HuFaFaSisDaDa_HuFaFaSisSoDa_HuFaMoBroDaDa_HuFaMoBroSoDa_HuFaMoSisDaDa_HuFaMoSisSoDa_HuFaSisDa_HuMoBroDa_HuMoFaBroDaDa_HuMoFaBroSoDa_HuMoFaSisDaDa_HuMoFaSisSoDa_HuMoMoBroDaDa_HuMoMoBroSoDa_HuMoMoSisDaDa_HuMoMoSisSoDa_HuMoSisDa_HuSis"}
;; 0
%nanand:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%nanand:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%nanand:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


nani_ben(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
{"Sis"}
;; 0
%nani_ben:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).


nani_mosi(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), younger(Alter, A).
{"MoSis"}
;; 0
%nani_mosi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).


nani_phui(Alter, Ego) :-  father(A, Ego), sister(Alter, A), younger(Alter, A).
{"FaSis"}
;; 0
%nani_phui:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).


nano_bhai(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
{"Bro"}
;; 0
%nano_bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).


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


phui(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                 |   spice(A, Ego), mother(Alter, A).
                 |   mother(A, Ego), brother(B, A), wife(Alter, B).
{"FaSis_HuMo_MoBroWi_WiMo"}
;; 0
%phui:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%phui:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 2
%phui:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 3
%phui:2, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


phui_ni_dikari(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(Alter, B).
{"FaSisDa"}
;; 0
%phui_ni_dikari:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


phui_no_dikaro(Alter, Ego) :-  father(A, Ego), sister(B, A), son(Alter, B).
{"FaSisSo"}
;; 0
%phui_no_dikaro:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


pitarai_ben(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(Alter, B).
{"FaBroDa"}
;; 0
%pitarai_ben:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


pitarai_bhai(Alter, Ego) :-  father(A, Ego), brother(B, A), son(Alter, B).
{"FaBroSo"}
;; 0
%pitarai_bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


potari(Alter, Ego) :-  son(A, Ego), daughter(Alter, A).
{"SoDa"}
;; 0
%potari:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).


potaro(Alter, Ego) :-  son(A, Ego), son(Alter, A).
{"SoSo"}
;; 0
%potaro:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).


sadu_bhai(Alter, Ego) :-  sali(A, Ego), husband(Alter, A).
{"WiFaBroDaHu_WiFaFaBroDaDaHu_WiFaFaBroSoDaHu_WiFaFaSisDaDaHu_WiFaFaSisSoDaHu_WiFaMoBroDaDaHu_WiFaMoBroSoDaHu_WiFaMoSisDaDaHu_WiFaMoSisSoDaHu_WiFaSisDaHu_WiMoBroDaHu_WiMoFaBroDaDaHu_WiMoFaBroSoDaHu_WiMoFaSisDaDaHu_WiMoFaSisSoDaHu_WiMoMoBroDaDaHu_WiMoMoBroSoDaHu_WiMoMoSisDaDaHu_WiMoMoSisSoDaHu_WiMoSisDaHu_WiSisHu"}
;; 0
%sadu_bhai:0, sali:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 2
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 3
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 4
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 5
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisSoDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 6
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisDaDaHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 7
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 8
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 9
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisSoDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 10
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisDaDaHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 11
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 12
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 13
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 14
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 15
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisSoDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 16
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisDaDaHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 17
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroSoDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 18
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroDaDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 19
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisSoDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 20
%sadu_bhai:0, sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisDaDaHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).


sali(Alter, Ego) :-  wife(A, Ego), generation[aux]30(Alter, A), female(Alter).
{"WiFaBroDa_WiFaFaBroDaDa_WiFaFaBroSoDa_WiFaFaSisDaDa_WiFaFaSisSoDa_WiFaMoBroDaDa_WiFaMoBroSoDa_WiFaMoSisDaDa_WiFaMoSisSoDa_WiFaSisDa_WiMoBroDa_WiMoFaBroDaDa_WiMoFaBroSoDa_WiMoFaSisDaDa_WiMoFaSisSoDa_WiMoMoBroDaDa_WiMoMoBroSoDa_WiMoMoSisDaDa_WiMoMoSisSoDa_WiMoSisDa_WiSis"}
;; 0
%sali:0, generation[aux]30:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%sali:0, generation[aux]30:1, parents:0, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:0, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%sali:0, generation[aux]30:1, parents:1, generation[aux]30gs:1, parents:1, generation[aux]30gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


salo(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%salo:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


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


vahu(Alter, Ego) :-  bhai(A, Ego), wife(Alter, A), younger(A, Ego).
{"BroWi"}
;; 0
%vahu:0, bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C), younger(C, Ego).


vevai(Alter, Ego) :-  children(A, Ego), spouse(B, A), father(Alter, B).
{"DaHuFa_SoWiFa"}
;; 0
%vevai:0, children:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiFa}  
 son(A, Ego), spouse(B, A), father(Alter, B).
;; 1
%vevai:0, children:1%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuFa}  
 daughter(A, Ego), spouse(B, A), father(Alter, B).


vevan(Alter, Ego) :-  children(A, Ego), spouse(B, A), mother(Alter, B).
{"DaHuMo_SoWiMo"}
;; 0
%vevan:0, children:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiMo}  
 son(A, Ego), spouse(B, A), mother(Alter, B).
;; 1
%vevan:0, children:1%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuMo}  
 daughter(A, Ego), spouse(B, A), mother(Alter, B).

