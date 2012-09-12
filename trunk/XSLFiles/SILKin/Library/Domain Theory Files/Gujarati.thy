;;  Horn Clause Representation of Gujarati Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Gujarati") (author, "Thomas Trautmann") (date, "1981-01-01") (citation, "Thomas Trautmann, DRAVIDIAN KINSHIP pp. 126-128") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (der, (jetha)), (derani, (jethani)), (jetha, (der)), (jethani, (derani)), (moti_phui, (phui, nani_phui)), (nani_phui, (moti_phui, phui)), (phui, (moti_phui, nani_phui)))
(umbrellas, (ben, (moti_bhai, nani_bhai)), (bhai, (moto_bhai, nano_bhai)), (kaka, (mota_kaka, nana_kaka)), (masi, (moti_masi, nani_masi)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

banevi(Alter, Ego) :-  ben(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%banevi:0, ben:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


bapu(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%bapu:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


ben(Alter, Ego) :-  sister(Alter, Ego).
{"Sis"}
;; 0
%ben:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


bhai(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bhanej(Alter, Ego) :-  ben(A, Ego), children(Alter, A).
                   |   spice(A, Ego), ben(B, A), children(Alter, B).
{"HuSisDa_HuSisSo_SisDa_SisSo_WiSisDa_WiSisSo"}
;; 0
%bhanej:0, ben:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%bhanej:0, ben:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%bhanej:1, spice:0, ben:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%bhanej:1, spice:0, ben:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%bhanej:1, spice:1, ben:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%bhanej:1, spice:1, ben:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


bhatriji(Alter, Ego) :-  bhai(A, Ego), daughter(Alter, A).
{"BroDa"}
;; 0
%bhatriji:0, bhai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).


bhatrijo(Alter, Ego) :-  bhai(A, Ego), son(Alter, A).
                     |   spice(A, Ego), bhai(B, A), son(Alter, B).
{"BroSo_HuBroSo_WiBroSo"}
;; 0
%bhatrijo:0, bhai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%bhatrijo:1, spice:0, bhai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%bhatrijo:1, spice:1, bhai:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


bhojai(Alter, Ego) :-  bhai(A, Ego), wife(Alter, A).
{"BroWi"}
;; 0
%bhojai:0, bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


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


dada(Alter, Ego) :-  father(A, Ego), father(Alter, A).
{"FaFa"}
;; 0
%dada:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


dadi(Alter, Ego) :-  father(A, Ego), mother(Alter, A).
{"FaMo"}
;; 0
%dadi:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


der(Alter, Ego) :-  husband(A, Ego), generation[aux]17(Alter, A), younger(Alter, A), male(Alter).
{"HuBro_HuFaBroSo_HuFaFaBroDaSo_HuFaFaBroSoSo_HuFaFaSisDaSo_HuFaFaSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoSo_HuFaMoSisDaSo_HuFaMoSisSoSo_HuFaSisSo_HuMoBroSo_HuMoFaBroDaSo_HuMoFaBroSoSo_HuMoFaSisDaSo_HuMoFaSisSoSo_HuMoMoBroDaSo_HuMoMoBroSoSo_HuMoMoSisDaSo_HuMoMoSisSoSo_HuMoSisSo"}
;; 0
%der:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), male(Alter).
;; 1
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 2
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 3
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 4
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 5
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 6
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 7
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 8
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 9
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 10
%der:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 11
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 12
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), younger(Alter, A), male(Alter).
;; 13
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 14
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 15
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 16
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 17
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 18
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 19
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), younger(Alter, A), male(Alter).
;; 20
%der:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), younger(Alter, A), male(Alter).


derani(Alter, Ego) :-  husband(A, Ego), generation[aux]17(B, A), younger(B, A), wife(Alter, B).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroDaSoWi_HuFaFaBroSoSoWi_HuFaFaSisDaSoWi_HuFaFaSisSoSoWi_HuFaMoBroDaSoWi_HuFaMoBroSoSoWi_HuFaMoSisDaSoWi_HuFaMoSisSoSoWi_HuFaSisSoWi_HuMoBroSoWi_HuMoFaBroDaSoWi_HuMoFaBroSoSoWi_HuMoFaSisDaSoWi_HuMoFaSisSoSoWi_HuMoMoBroDaSoWi_HuMoMoBroSoSoWi_HuMoMoSisDaSoWi_HuMoMoSisSoSoWi_HuMoSisSoWi"}
;; 0
%derani:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), wife(Alter, D).
;; 1
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), younger(F, A), wife(Alter, F).
;; 2
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), younger(F, A), wife(Alter, F).
;; 3
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 4
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 5
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 6
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 7
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 8
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 9
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 10
%derani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 11
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), younger(F, A), wife(Alter, F).
;; 12
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), younger(F, A), wife(Alter, F).
;; 13
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 14
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 15
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 16
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 17
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 18
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 19
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), younger(H, A), wife(Alter, H).
;; 20
%derani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), younger(H, A), wife(Alter, H).


dikara_ni_dikari(Alter, Ego) :-  son(A, Ego), daughter(Alter, A).
{"SoDa"}
;; 0
%dikara_ni_dikari:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).


dikara_no_dikaro(Alter, Ego) :-  son(A, Ego), son(Alter, A).
{"SoSo"}
;; 0
%dikara_no_dikaro:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).


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


generation[aux]17(Alter, Ego) :-  sibling(Alter, Ego).
                              |  [ext],  parents(A, Ego), generation[aux]17gs(B, A), child(Alter, B).
;; 0
%generation[aux]17:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]17gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]17gs(B, A), children(Alter, B).
;; 0
%generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


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


jamai(Alter, Ego) :-  dikari(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%jamai:0, dikari:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


jetha(Alter, Ego) :-  husband(A, Ego), generation[aux]17(Alter, A), elder(Alter, A), male(Alter).
{"HuBro_HuFaBroSo_HuFaFaBroDaSo_HuFaFaBroSoSo_HuFaFaSisDaSo_HuFaFaSisSoSo_HuFaMoBroDaSo_HuFaMoBroSoSo_HuFaMoSisDaSo_HuFaMoSisSoSo_HuFaSisSo_HuMoBroSo_HuMoFaBroDaSo_HuMoFaBroSoSo_HuMoFaSisDaSo_HuMoFaSisSoSo_HuMoMoBroDaSo_HuMoMoBroSoSo_HuMoMoSisDaSo_HuMoMoSisSoSo_HuMoSisSo"}
;; 0
%jetha:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), elder(Alter, A), male(Alter).
;; 1
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 2
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 3
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 4
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 5
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 6
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 7
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 8
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 9
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 10
%jetha:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 11
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 12
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), elder(Alter, A), male(Alter).
;; 13
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 14
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 15
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 16
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 17
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 18
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 19
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), elder(Alter, A), male(Alter).
;; 20
%jetha:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), elder(Alter, A), male(Alter).


jethani(Alter, Ego) :-  husband(A, Ego), generation[aux]17(B, A), elder(B, A), wife(Alter, B).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroDaSoWi_HuFaFaBroSoSoWi_HuFaFaSisDaSoWi_HuFaFaSisSoSoWi_HuFaMoBroDaSoWi_HuFaMoBroSoSoWi_HuFaMoSisDaSoWi_HuFaMoSisSoSoWi_HuFaSisSoWi_HuMoBroSoWi_HuMoFaBroDaSoWi_HuMoFaBroSoSoWi_HuMoFaSisDaSoWi_HuMoFaSisSoSoWi_HuMoMoBroDaSoWi_HuMoMoBroSoSoWi_HuMoMoSisDaSoWi_HuMoMoSisSoSoWi_HuMoSisSoWi"}
;; 0
%jethani:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), wife(Alter, D).
;; 1
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoBroSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), elder(F, A), wife(Alter, F).
;; 2
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuMoSisSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), elder(F, A), wife(Alter, F).
;; 3
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 4
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoBroDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 5
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 6
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoMoSisDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 7
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 8
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaBroDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 9
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisSoSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 10
%jethani:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuMoFaSisDaSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 11
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), elder(F, A), wife(Alter, F).
;; 12
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaSisSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), elder(F, A), wife(Alter, F).
;; 13
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroSoSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 14
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoBroDaSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 15
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisSoSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 16
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaMoSisDaSoWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 17
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 18
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroDaSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 19
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisSoSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), elder(H, A), wife(Alter, H).
;; 20
%jethani:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaSisDaSoWi}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), elder(H, A), wife(Alter, H).


kaka(Alter, Ego) :-  father(A, Ego), generation[aux]17(Alter, A), male(Alter).
{"FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo"}
;; 0
%kaka:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 2
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 3
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 4
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 5
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 6
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 7
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 8
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 9
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 10
%kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 11
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 12
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 13
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 14
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 15
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 16
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 17
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 18
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 19
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 20
%kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


kaki(Alter, Ego) :-  kaka(A, Ego), wife(Alter, A).
{"FaBroWi_FaFaBroSoWi_FaFaFaBroDaSoWi_FaFaFaBroSoSoWi_FaFaFaSisDaSoWi_FaFaFaSisSoSoWi_FaFaMoBroDaSoWi_FaFaMoBroSoSoWi_FaFaMoSisDaSoWi_FaFaMoSisSoSoWi_FaFaSisSoWi_FaMoBroSoWi_FaMoFaBroDaSoWi_FaMoFaBroSoSoWi_FaMoFaSisDaSoWi_FaMoFaSisSoSoWi_FaMoMoBroDaSoWi_FaMoMoBroSoSoWi_FaMoMoSisDaSoWi_FaMoMoSisSoSoWi_FaMoSisSoWi"}
;; 0
%kaki:0, kaka:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 1
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), wife(Alter, F).
;; 2
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), wife(Alter, F).
;; 3
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 4
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 5
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 6
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 7
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 8
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaBroDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 9
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 10
%kaki:0, kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaMoFaSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 11
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), wife(Alter, F).
;; 12
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), male(F), wife(Alter, F).
;; 13
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 14
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 15
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 16
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaMoSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 17
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 18
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).
;; 19
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), male(H), wife(Alter, H).
;; 20
%kaki:0, kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {FaFaFaSisDaSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), male(H), wife(Alter, H).


mama(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
{"MoBro"}
;; 0
%mama:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


mama_ni_dikari_ben(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(Alter, B).
{"MoBroDa"}
;; 0
%mama_ni_dikari_ben:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


mama_no_dikaro_bhai(Alter, Ego) :-  mother(A, Ego), brother(B, A), son(Alter, B).
{"MoBroSo"}
;; 0
%mama_no_dikaro_bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


mami(Alter, Ego) :-  mama(A, Ego), wife(Alter, A).
{"MoBroWi"}
;; 0
%mami:0, mama:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


man(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%man:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


masa(Alter, Ego) :-  masi(A, Ego), husband(Alter, A).
{"MoFaBroDaHu_MoFaFaBroDaDaHu_MoFaFaBroSoDaHu_MoFaFaSisDaDaHu_MoFaFaSisSoDaHu_MoFaMoBroDaDaHu_MoFaMoBroSoDaHu_MoFaMoSisDaDaHu_MoFaMoSisSoDaHu_MoFaSisDaHu_MoMoBroDaHu_MoMoFaBroDaDaHu_MoMoFaBroSoDaHu_MoMoFaSisDaDaHu_MoMoFaSisSoDaHu_MoMoMoBroDaDaHu_MoMoMoBroSoDaHu_MoMoMoSisDaDaHu_MoMoMoSisSoDaHu_MoMoSisDaHu_MoSisHu"}
;; 0
%masa:0, masi:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 2
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 3
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 4
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 5
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 6
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 7
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 8
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaBroDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 9
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 10
%masa:0, masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoMoFaSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 11
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 12
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 13
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 14
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 15
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 16
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaMoSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 17
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 18
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 19
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisSoDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 20
%masa:0, masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).


masi(Alter, Ego) :-  mother(A, Ego), generation[aux]17(Alter, A), female(Alter).
{"MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%masi:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


masi_ni_ben(Alter, Ego) :-  mother(A, Ego), sister(B, A), daughter(Alter, B).
{"MoSisDa"}
;; 0
%masi_ni_ben:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


masiai_bhai(Alter, Ego) :-  mother(A, Ego), sister(B, A), son(Alter, B).
{"MoSisSo"}
;; 0
%masiai_bhai:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


mota_kaka(Alter, Ego) :-  father(A, Ego), generation[aux]17(Alter, A), male(Alter), elder(Alter, A).
{"FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo"}
;; 0
%mota_kaka:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 1
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, A).
;; 2
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, A).
;; 3
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 4
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 5
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 6
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 7
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 8
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 9
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 10
%mota_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 11
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, A).
;; 12
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), elder(Alter, A).
;; 13
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 14
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 15
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 16
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 17
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 18
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 19
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), elder(Alter, A).
;; 20
%mota_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), elder(Alter, A).


moti_bhai(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
{"Sis"}
;; 0
%moti_bhai:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).


moti_masi(Alter, Ego) :-  mother(A, Ego), generation[aux]17(Alter, A), female(Alter), elder(Alter, A).
{"MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%moti_masi:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 1
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 2
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 3
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 4
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 5
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 6
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 7
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 8
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 9
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 10
%moti_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 11
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 12
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 13
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 14
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 15
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 16
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 17
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 18
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 19
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 20
%moti_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).


moti_phui(Alter, Ego) :-  father(A, Ego), generation[aux]17(Alter, A), female(Alter), elder(Alter, A).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis"}
;; 0
%moti_phui:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 1
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 2
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 3
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 4
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 5
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 6
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 7
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 8
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 9
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 10
%moti_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 11
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 12
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 13
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 14
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 15
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 16
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 17
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 18
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 19
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), elder(Alter, A).
;; 20
%moti_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), elder(Alter, A).


moto_bhai(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
{"Bro"}
;; 0
%moto_bhai:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).


nana(Alter, Ego) :-  mother(A, Ego), father(Alter, A).
{"MoFa"}
;; 0
%nana:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).


nana_kaka(Alter, Ego) :-  father(A, Ego), generation[aux]17(Alter, A), male(Alter), younger(Alter, A).
{"FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo"}
;; 0
%nana_kaka:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).
;; 1
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, A).
;; 2
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, A).
;; 3
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 4
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 5
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 6
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 7
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 8
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 9
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 10
%nana_kaka:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 11
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, A).
;; 12
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter), younger(Alter, A).
;; 13
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 14
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 15
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 16
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 17
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 18
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 19
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter), younger(Alter, A).
;; 20
%nana_kaka:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter), younger(Alter, A).


nanadoi(Alter, Ego) :-  nanand(A, Ego), husband(Alter, A).
{"HuFaBroDaHu_HuFaFaBroDaDaHu_HuFaFaBroSoDaHu_HuFaFaSisDaDaHu_HuFaFaSisSoDaHu_HuFaMoBroDaDaHu_HuFaMoBroSoDaHu_HuFaMoSisDaDaHu_HuFaMoSisSoDaHu_HuFaSisDaHu_HuMoBroDaHu_HuMoFaBroDaDaHu_HuMoFaBroSoDaHu_HuMoFaSisDaDaHu_HuMoFaSisSoDaHu_HuMoMoBroDaDaHu_HuMoMoBroSoDaHu_HuMoMoSisDaDaHu_HuMoMoSisSoDaHu_HuMoSisDaHu_HuSisHu"}
;; 0
%nanadoi:0, nanand:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), husband(Alter, G).
;; 1
%nanadoi:0, nanand:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), husband(Alter, G).
;; 2
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuMoBroDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 3
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuMoBroDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 4
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 5
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuMoSisDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 6
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoBroSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 7
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoBroSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 8
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 9
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoBroDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 10
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoSisSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 11
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoSisSoDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 12
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoSisDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 13
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoMoSisDaDaHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 14
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaBroSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 15
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaBroSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 16
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 17
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaBroDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 18
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaSisSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 19
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaSisSoDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 20
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaSisDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 21
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuMoFaSisDaDaHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 22
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 23
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuFaBroDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 24
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 25
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=2, Star=0,  {HuFaSisDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I).
;; 26
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoBroSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 27
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoBroSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 28
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 29
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoBroDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 30
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 31
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoSisSoDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 32
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoSisDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 33
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaMoSisDaDaHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 34
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaBroSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 35
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaBroSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 36
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaBroDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 37
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaBroDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 38
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaSisSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 39
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaSisSoDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 40
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaSisDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).
;; 41
%nanadoi:0, nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=2, Star=0,  {HuFaFaSisDaDaHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(K, I), child(K, J), not(equal(K, H)), female(K), husband(Alter, K).


nanand(Alter, Ego) :-  husband(A, Ego), generation[aux]17gs(B, A), sister(Alter, B).
{"HuFaBroDa_HuFaFaBroDaDa_HuFaFaBroSoDa_HuFaFaSisDaDa_HuFaFaSisSoDa_HuFaMoBroDaDa_HuFaMoBroSoDa_HuFaMoSisDaDa_HuFaMoSisSoDa_HuFaSisDa_HuMoBroDa_HuMoFaBroDaDa_HuMoFaBroSoDa_HuMoFaSisDaDa_HuMoFaSisSoDa_HuMoMoBroDaDa_HuMoMoBroSoDa_HuMoMoSisDaDa_HuMoMoSisSoDa_HuMoSisDa_HuSis"}
;; 0
%nanand:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 1
%nanand:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 2
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 3
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 4
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 5
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoSisDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 6
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 7
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 8
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 9
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoBroDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 10
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 11
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoSisSoDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 12
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 13
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 14
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 15
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 16
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 17
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 18
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 19
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 20
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 21
%nanand:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuMoFaSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 22
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 23
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaBroDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 24
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 25
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), mother(G, F), father(H, F), child(Alter, G), child(Alter, H), not(equal(Alter, F)), female(Alter).
;; 26
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 27
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 28
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 29
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 30
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 31
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 32
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 33
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaMoSisDaDa}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 34
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaBroSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 35
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaBroSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 36
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaBroDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 37
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaBroDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 38
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaSisSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 39
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaSisSoDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 40
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaSisDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).
;; 41
%nanand:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, sister:0, sibling:0%
 Lvl=0,  PC=12, S=1, Star=0,  {HuFaFaSisDaDa}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), mother(I, H), father(J, H), child(Alter, I), child(Alter, J), not(equal(Alter, H)), female(Alter).


nani(Alter, Ego) :-  mother(A, Ego), mother(Alter, A).
{"MoMo"}
;; 0
%nani:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).


nani_bhai(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
{"Sis"}
;; 0
%nani_bhai:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).


nani_masi(Alter, Ego) :-  mother(A, Ego), generation[aux]17(Alter, A), female(Alter), younger(Alter, A).
{"MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%nani_masi:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 1
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 2
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 3
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 4
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 5
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 6
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 7
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 8
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 9
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 10
%nani_masi:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 11
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 12
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 13
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 14
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 15
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 16
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 17
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 18
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 19
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 20
%nani_masi:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).


nani_phui(Alter, Ego) :-  father(A, Ego), generation[aux]17(Alter, A), female(Alter), younger(Alter, A).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis"}
;; 0
%nani_phui:0, generation[aux]17:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 1
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 2
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 3
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 4
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 5
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 6
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 7
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 8
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 9
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 10
%nani_phui:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 11
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 12
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 13
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 14
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 15
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 16
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 17
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 18
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 19
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter), younger(Alter, A).
;; 20
%nani_phui:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter), younger(Alter, A).


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


pati(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%pati:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


phua(Alter, Ego) :-  phui(A, Ego), husband(Alter, A).
{"FaSisHu"}
;; 0
%phua:0, phui:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


phui(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%phui:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


phui_ni_dikari_ben(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(Alter, B).
{"FaSisDa"}
;; 0
%phui_ni_dikari_ben:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


phui_no_dikaro_bhai(Alter, Ego) :-  father(A, Ego), sister(B, A), son(Alter, B).
{"FaSisSo"}
;; 0
%phui_no_dikaro_bhai:0, sister:0, sibling:0%
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


sadu_bhai(Alter, Ego) :-  sali(A, Ego), husband(Alter, A).
{"WiFaBroDaHu_WiFaFaBroDaDaHu_WiFaFaBroSoDaHu_WiFaFaSisDaDaHu_WiFaFaSisSoDaHu_WiFaMoBroDaDaHu_WiFaMoBroSoDaHu_WiFaMoSisDaDaHu_WiFaMoSisSoDaHu_WiFaSisDaHu_WiMoBroDaHu_WiMoFaBroDaDaHu_WiMoFaBroSoDaHu_WiMoFaSisDaDaHu_WiMoFaSisSoDaHu_WiMoMoBroDaDaHu_WiMoMoBroSoDaHu_WiMoMoSisDaDaHu_WiMoMoSisSoDaHu_WiMoSisDaHu_WiSisHu"}
;; 0
%sadu_bhai:0, sali:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoBroDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 2
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiMoSisDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 3
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroSoDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 4
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoBroDaDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 5
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisSoDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 6
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoMoSisDaDaHu}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 7
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroSoDaHu}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 8
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaBroDaDaHu}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 9
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisSoDaHu}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 10
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiMoFaSisDaDaHu}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 11
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), female(F), husband(Alter, F).
;; 12
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaSisDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), female(F), husband(Alter, F).
;; 13
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroSoDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 14
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoBroDaDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 15
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisSoDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 16
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaMoSisDaDaHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 17
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroSoDaHu}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 18
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroDaDaHu}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).
;; 19
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisSoDaHu}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), female(H), husband(Alter, H).
;; 20
%sadu_bhai:0, sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaSisDaDaHu}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), female(H), husband(Alter, H).


sala(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%sala:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


salavali(Alter, Ego) :-  sala(A, Ego), wife(Alter, A).
{"WiBroWi"}
;; 0
%salavali:0, sala:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


sali(Alter, Ego) :-  wife(A, Ego), generation[aux]17(Alter, A), female(Alter).
{"WiFaBroDa_WiFaFaBroDaDa_WiFaFaBroSoDa_WiFaFaSisDaDa_WiFaFaSisSoDa_WiFaMoBroDaDa_WiFaMoBroSoDa_WiFaMoSisDaDa_WiFaMoSisSoDa_WiFaSisDa_WiMoBroDa_WiMoFaBroDaDa_WiMoFaBroSoDa_WiMoFaSisDaDa_WiMoFaSisSoDa_WiMoMoBroDaDa_WiMoMoBroSoDa_WiMoMoSisDaDa_WiMoMoSisSoDa_WiMoSisDa_WiSis"}
;; 0
%sali:0, generation[aux]17:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 3
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 4
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 5
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%sali:0, generation[aux]17:1, parents:0, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 12
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 13
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 14
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 15
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:0, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%sali:0, generation[aux]17:1, parents:1, generation[aux]17gs:1, parents:1, generation[aux]17gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


sasaro(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
{"HuFa_WiFa"}
;; 0
%sasaro:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%sasaro:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


sasu(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%sasu:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%sasu:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


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


vahu(Alter, Ego) :-  wife(Alter, Ego).
                 |   dikaro(A, Ego), wife(Alter, A).
{"SoWi_Wi"}
;; 0
%vahu:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%vahu:1, dikaro:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).


vevai(Alter, Ego) :-  jamai(A, Ego), father(Alter, A).
                  |   dikaro(A, Ego), wife(B, A), father(Alter, B).
{"DaHuFa_SoWiFa"}
;; 0
%vevai:0, jamai:0, dikari:0%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuFa}  
 daughter(A, Ego), husband(B, A), father(Alter, B).
;; 1
%vevai:1, dikaro:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiFa}  
 son(A, Ego), wife(B, A), father(Alter, B).


vevan(Alter, Ego) :-  jamai(A, Ego), mother(Alter, A).
                  |   dikaro(A, Ego), wife(B, A), mother(Alter, B).
{"DaHuMo_SoWiMo"}
;; 0
%vevan:0, jamai:0, dikari:0%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuMo}  
 daughter(A, Ego), husband(B, A), mother(Alter, B).
;; 1
%vevan:1, dikaro:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiMo}  
 son(A, Ego), wife(B, A), mother(Alter, B).

