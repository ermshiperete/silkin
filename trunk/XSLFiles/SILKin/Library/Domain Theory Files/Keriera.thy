;;  Horn Clause Representation of Keriera Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Keriera") (author, "Thomas R. Trautmann") (date, "1981-01-01") (citation, "Thomas R. Trautmann DRAVIDIAN KINSHIP, 1981, Cambridge University Press, New York") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (kaja, (margara)), (margara, (kaja)), (mari, (turdu)), (turdu, (mari)))
(umbrellas, (nuba, (nguranu)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

bali(Alter, Ego) :-  male(Ego), cross[aux]25up1(Ego, Alter), female(Alter).
                 |   male(Ego), son(A, Ego), wife(Alter, A).
{"SisDa_SoWi_WiSisDa"}
;; 0
%bali:0, cross[aux]25up1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), parent(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(E, Ego), not(equal(D, E)), female(Alter).
;; 1
%bali:0, cross[aux]25up1:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext],  male(Ego), parent(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Ego, D), gender(E, A), gender(F, Ego), not(equal(E, F)), female(Alter).
;; 2
%bali:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 male(Ego), son(A, Ego), wife(Alter, A).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bungali(Alter, Ego) :-  cross_cousin[aux]25(Alter, Ego), female(Ego), female(Alter).
                    |  [ext],  husband(A, Ego), sister(Alter, A).
                    |  [ext],  female(Ego), brother(A, Ego), wife(Alter, A).
{"BroWi_FaSisDa_HuSis_MoBroDa"}
;; 0
%bungali:0, cross_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Ego), female(Alter).
;; 1
%bungali:0, cross_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Ego), female(Alter).
;; 2
%bungali:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%bungali:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


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


cross[aux]252up(Alter, Ego) :-  male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)).
                            |   female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)).
                            |  [ext],  male(Ego), parents(A, Ego), parent(B, A), sibling(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                            |  [ext],  female(Ego), parents(A, Ego), parent(B, A), sibling(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                            |  [ext],  spice(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter).
;; 0
%cross[aux]252up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)).
;; 1
%cross[aux]252up:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)).
;; 2
%cross[aux]252up:2, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 3
%cross[aux]252up:2, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 4
%cross[aux]252up:3, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 5
%cross[aux]252up:3, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 6
%cross[aux]252up:4, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter).
;; 7
%cross[aux]252up:4, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter).


cross[aux]25up1(Alter, Ego) :-  parent(A, Ego), sibling(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)).
                            |  [ext],  parent(A, Ego), sibling(B, A), spouse(Alter, B), gender(C, A), gender(D, Alter), not(equal(C, D)).
;; 0
%cross[aux]25up1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%cross[aux]25up1:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(F, Alter), not(equal(E, F)).


cross_cousin[aux]25(Alter, Ego) :-  parents(A, Ego), sibling(B, A), child(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%cross_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%cross_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).


generation[aux]25(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]25(B, A), child(Alter, B).
;; 0
%generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]25:1, parents:0, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]25:1, parents:0, generation[aux]25:1, parents:0, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]25:1, parents:0, generation[aux]25:1, parents:1, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]25:1, parents:1, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]25:1, parents:1, generation[aux]25:1, parents:0, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]25:1, parents:1, generation[aux]25:1, parents:1, generation[aux]25:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


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


kabali(Alter, Ego) :-  cross[aux]252up(Alter, Ego), female(Alter).
                   |   female(Ego), cross[aux]252up(Ego, Alter).
{"BroDaDa_BroDaSo_DaDaHu_DaSoWi_FaMo_FaMoSis_HuMoMo_MoFaSis_SisSoDa_SisSoSo_SoDa_SoSo_WiMoMo"}
;; 0
%kabali:0, cross[aux]252up:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)), female(Alter).
;; 1
%kabali:0, cross[aux]252up:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)), female(Alter).
;; 2
%kabali:0, cross[aux]252up:2, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), female(Alter).
;; 3
%kabali:0, cross[aux]252up:2, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), female(Alter).
;; 4
%kabali:0, cross[aux]252up:3, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), female(Alter).
;; 5
%kabali:0, cross[aux]252up:3, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), female(Alter).
;; 6
%kabali:0, cross[aux]252up:4, spice:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter), female(Alter).
;; 7
%kabali:0, cross[aux]252up:4, spice:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter), female(Alter).
;; 8
%kabali:1, cross[aux]252up:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 female(Ego), male(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(C, Ego), not(equal(B, C)).
;; 9
%kabali:1, cross[aux]252up:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 female(Ego), female(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(C, Ego), not(equal(B, C)).
;; 10
%kabali:1, cross[aux]252up:2, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  female(Ego), male(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 11
%kabali:1, cross[aux]252up:2, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  female(Ego), male(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 12
%kabali:1, cross[aux]252up:3, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  female(Ego), female(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 13
%kabali:1, cross[aux]252up:3, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  female(Ego), female(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 14
%kabali:1, cross[aux]252up:4, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
[ext],  female(Ego), husband(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(C, Ego).
;; 15
%kabali:1, cross[aux]252up:4, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
[ext],  female(Ego), wife(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(C, Ego).


kaga(Alter, Ego) :-  cross[aux]25up1(Alter, Ego), male(Alter).
                 |   spice(A, Ego), father(Alter, A).
{"HuFa_MoBro_MoSisHu_WiFa"}
;; 0
%kaga:0, cross[aux]25up1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), male(Alter).
;; 1
%kaga:0, cross[aux]25up1:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(F, Alter), not(equal(E, F)), male(Alter).
;; 2
%kaga:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 3
%kaga:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


kaja(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                 |  [ext],  parallel_cousin[aux]25(Alter, Ego), elder(Alter, Ego), male(Alter).
{"Bro_FaBroSo_MoSisSo"}
;; 0
%kaja:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%kaja:1, parallel_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego), male(Alter).
;; 2
%kaja:1, parallel_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego), male(Alter).


kandari(Alter, Ego) :-  parallel[aux]252up(Alter, Ego), female(Alter).
                    |   female(Ego), parallel[aux]252up(Ego, Alter).
{"BroSoDa_BroSoSo_DaDa_DaSo_FaFaSis_HuFaMo_MoMo_MoMoSis_SisDaDa_SisDaSo_SoDaHu_SoSoWi_WiFaMo"}
;; 0
%kandari:0, parallel[aux]252up:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter), female(Alter).
;; 1
%kandari:0, parallel[aux]252up:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter), female(Alter).
;; 2
%kandari:0, parallel[aux]252up:2, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), female(Alter).
;; 3
%kandari:0, parallel[aux]252up:2, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), female(Alter).
;; 4
%kandari:0, parallel[aux]252up:3, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), female(Alter).
;; 5
%kandari:0, parallel[aux]252up:3, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), female(Alter).
;; 6
%kandari:0, parallel[aux]252up:4, spice:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)), female(Alter).
;; 7
%kandari:0, parallel[aux]252up:4, spice:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)), female(Alter).
;; 8
%kandari:1, parallel[aux]252up:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 female(Ego), male(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(B, Ego).
;; 9
%kandari:1, parallel[aux]252up:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 female(Ego), female(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(B, Ego).
;; 10
%kandari:1, parallel[aux]252up:2, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  female(Ego), male(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 11
%kandari:1, parallel[aux]252up:2, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  female(Ego), male(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 12
%kandari:1, parallel[aux]252up:3, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  female(Ego), female(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 13
%kandari:1, parallel[aux]252up:3, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  female(Ego), female(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 14
%kandari:1, parallel[aux]252up:4, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
[ext],  female(Ego), husband(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(D, Ego), not(equal(C, D)).
;; 15
%kandari:1, parallel[aux]252up:4, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
[ext],  female(Ego), wife(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(D, Ego), not(equal(C, D)).


kuling(Alter, Ego) :-  male(Ego), cross[aux]25up1(Ego, Alter), male(Alter).
                   |   male(Ego), daughter(A, Ego), husband(Alter, A).
{"DaHu_SisSo_WiSisSo"}
;; 0
%kuling:0, cross[aux]25up1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), parent(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(E, Ego), not(equal(D, E)), male(Alter).
;; 1
%kuling:0, cross[aux]25up1:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext],  male(Ego), parent(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Ego, D), gender(E, A), gender(F, Ego), not(equal(E, F)), male(Alter).
;; 2
%kuling:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 male(Ego), daughter(A, Ego), husband(Alter, A).


kumbali(Alter, Ego) :-  cross_cousin[aux]25(Alter, Ego), male(Ego), male(Alter).
                    |  [ext],  male(Ego), sister(A, Ego), husband(Alter, A).
                    |  [ext],  wife(A, Ego), brother(Alter, A).
{"FaSisSo_MoBroSo_SisHu_WiBro"}
;; 0
%kumbali:0, cross_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Ego), male(Alter).
;; 1
%kumbali:0, cross_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Ego), male(Alter).
;; 2
%kumbali:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 3
%kumbali:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


kundal(Alter, Ego) :-  daughter(Alter, Ego).
                   |  [ext],  sibling(A, Ego), gender(B, A), gender(B, Ego), daughter(Alter, A).
{"BroDa_Da_SisDa"}
;; 0
%kundal:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%kundal:1, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 2
%kundal:1, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).


maeli(Alter, Ego) :-  parallel[aux]252up(Alter, Ego), male(Alter).
                  |   male(Ego), parallel[aux]252up(Ego, Alter).
{"BroSoDa_BroSoSo_DaDaHu_DaSoWi_FaFa_FaFaBro_HuMoFa_MoMoBro_SisDaDa_SisDaSo_SoDa_SoSo_WiMoFa"}
;; 0
%maeli:0, parallel[aux]252up:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter), male(Alter).
;; 1
%maeli:0, parallel[aux]252up:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter), male(Alter).
;; 2
%maeli:0, parallel[aux]252up:2, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), male(Alter).
;; 3
%maeli:0, parallel[aux]252up:2, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), male(Alter).
;; 4
%maeli:0, parallel[aux]252up:3, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), male(Alter).
;; 5
%maeli:0, parallel[aux]252up:3, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B), male(Alter).
;; 6
%maeli:0, parallel[aux]252up:4, spice:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)), male(Alter).
;; 7
%maeli:0, parallel[aux]252up:4, spice:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)), male(Alter).
;; 8
%maeli:1, parallel[aux]252up:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 male(Ego), male(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(B, Ego).
;; 9
%maeli:1, parallel[aux]252up:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 male(Ego), female(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(B, Ego).
;; 10
%maeli:1, parallel[aux]252up:2, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  male(Ego), male(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 11
%maeli:1, parallel[aux]252up:2, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  male(Ego), male(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 12
%maeli:1, parallel[aux]252up:3, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  male(Ego), female(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 13
%maeli:1, parallel[aux]252up:3, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  male(Ego), female(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(E, B).
;; 14
%maeli:1, parallel[aux]252up:4, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
[ext],  male(Ego), husband(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(D, Ego), not(equal(C, D)).
;; 15
%maeli:1, parallel[aux]252up:4, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
[ext],  male(Ego), wife(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(D, Ego), not(equal(C, D)).


mainga(Alter, Ego) :-  son(Alter, Ego).
                   |  [ext],  sibling(A, Ego), gender(B, A), gender(B, Ego), son(Alter, A).
{"BroSo_SisSo_So"}
;; 0
%mainga:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%mainga:1, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 2
%mainga:1, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).


mama(Alter, Ego) :-  father(Alter, Ego).
                 |  [ext],  parallel[aux]25up1(Alter, Ego), male(Alter).
                 |  [ext],  spice(A, Ego), mother(B, A), brother(Alter, B).
                 |  [ext],  mother(A, Ego), brother(B, A), wife(C, B), brother(Alter, C).
                 |  [ext],  sister(A, Ego), husband(B, A), mother(C, B), brother(Alter, C).
{"Fa_FaBro_FaSisHu_HuMoBro_MoBroWiBro_SisHuMoBro_WiMoBro"}
;; 0
%mama:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%mama:1, parallel[aux]25up1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), male(Alter).
;; 2
%mama:1, parallel[aux]25up1:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
[ext], [ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(E, Alter), male(Alter).
;; 3
%mama:2, spice:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%mama:2, spice:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%mama:3, brother:0, sibling:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoBroWiBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).
;; 6
%mama:4, sister:0, sibling:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {SisHuMoBro}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(D, C), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).


margara(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
                    |  [ext],  parallel_cousin[aux]25(Alter, Ego), younger(Alter, Ego), male(Alter).
{"Bro_FaBroSo_MoSisSo"}
;; 0
%margara:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%margara:1, parallel_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego), male(Alter).
;; 2
%margara:1, parallel_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego), male(Alter).


mari(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
                 |  [ext],  parallel_cousin[aux]25(Alter, Ego), younger(Alter, Ego), female(Alter).
{"FaBroDa_MoSisDa_Sis"}
;; 0
%mari:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%mari:1, parallel_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego), female(Alter).
;; 2
%mari:1, parallel_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), younger(Alter, Ego), female(Alter).


nganga(Alter, Ego) :-  mother(Alter, Ego).
                   |  [ext],  parallel[aux]25up1(Alter, Ego), female(Alter).
                   |  [ext],  spice(A, Ego), father(B, A), sister(Alter, B).
{"HuFaSis_Mo_MoBroWi_MoSis_WiFaSis"}
;; 0
%nganga:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%nganga:1, parallel[aux]25up1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), female(Alter).
;; 2
%nganga:1, parallel[aux]25up1:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext], [ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(E, Alter), female(Alter).
;; 3
%nganga:2, spice:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%nganga:2, spice:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


ngaraia(Alter, Ego) :-  female(Ego), cross[aux]25up1(Ego, Alter), female(Alter).
                    |   female(Ego), son(A, Ego), wife(Alter, A).
                    |  [ext],  husband(A, Ego), sister(B, A), daughter(Alter, B).
{"BroDa_HuBroDa_HuSisDa_SoWi"}
;; 0
%ngaraia:0, cross[aux]25up1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), parent(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(E, Ego), not(equal(D, E)), female(Alter).
;; 1
%ngaraia:0, cross[aux]25up1:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext],  female(Ego), parent(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Ego, D), gender(E, A), gender(F, Ego), not(equal(E, F)), female(Alter).
;; 2
%ngaraia:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 female(Ego), son(A, Ego), wife(Alter, A).
;; 3
%ngaraia:2, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


nguranu(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%nguranu:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


nuba(Alter, Ego) :-  spice(Alter, Ego).
                 |   cross_cousin[aux]25(Alter, Ego), gender(A, Ego), gender(B, Alter), not(equal(A, B)).
                 |  [ext],  female(Ego), sister(A, Ego), husband(Alter, A).
                 |  [ext],  spice(A, Ego), sibling(Alter, A), gender(B, Alter), gender(B, A).
{"FaSisDa_FaSisSo_Hu_HuBro_MoBroDa_MoBroSo_SisHu_Wi_WiSis"}
;; 0
%nuba:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%nuba:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 2
%nuba:1, cross_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 3
%nuba:1, cross_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 4
%nuba:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 5
%nuba:3, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 6
%nuba:3, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 7
%nuba:1, cross_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 8
%nuba:1, cross_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), gender(G, Ego), gender(H, Alter), not(equal(G, H)).


parallel[aux]252up(Alter, Ego) :-  male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter).
                               |   female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter).
                               |  [ext],  male(Ego), parents(A, Ego), parent(B, A), sibling(Alter, B), gender(C, A), gender(C, B).
                               |  [ext],  female(Ego), parents(A, Ego), parent(B, A), sibling(Alter, B), gender(C, A), gender(C, B).
                               |  [ext],  spice(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)).
;; 0
%parallel[aux]252up:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter).
;; 1
%parallel[aux]252up:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(B, Alter).
;; 2
%parallel[aux]252up:2, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B).
;; 3
%parallel[aux]252up:2, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B).
;; 4
%parallel[aux]252up:3, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B).
;; 5
%parallel[aux]252up:3, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(E, B).
;; 6
%parallel[aux]252up:4, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)).
;; 7
%parallel[aux]252up:4, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(D, Alter), not(equal(C, D)).


parallel[aux]25up1(Alter, Ego) :-  parent(A, Ego), sibling(Alter, A), gender(B, A), gender(B, Alter).
                               |  [ext],  parent(A, Ego), sibling(B, A), spouse(Alter, B), gender(C, A), gender(C, Alter).
;; 0
%parallel[aux]25up1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 1
%parallel[aux]25up1:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(E, Alter).


parallel_cousin[aux]25(Alter, Ego) :-  parents(A, Ego), sibling(B, A), child(Alter, B), gender(C, A), gender(C, B).
;; 0
%parallel_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D).
;; 1
%parallel_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D).


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


tami(Alter, Ego) :-  cross[aux]252up(Alter, Ego), male(Alter).
                 |   male(Ego), cross[aux]252up(Ego, Alter).
{"BroDaDa_BroDaSo_DaDa_DaSo_FaMoBro_HuFaFa_MoFa_MoFaBro_SisSoDa_SisSoSo_SoDaHu_SoSoWi_WiFaFa"}
;; 0
%tami:0, cross[aux]252up:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 male(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)), male(Alter).
;; 1
%tami:0, cross[aux]252up:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 female(Ego), parent(A, Ego), parent(Alter, A), gender(B, A), gender(C, Alter), not(equal(B, C)), male(Alter).
;; 2
%tami:0, cross[aux]252up:2, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  male(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), male(Alter).
;; 3
%tami:0, cross[aux]252up:2, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  male(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), male(Alter).
;; 4
%tami:0, cross[aux]252up:3, parents:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  female(Ego), mother(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), male(Alter).
;; 5
%tami:0, cross[aux]252up:3, parents:1, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  female(Ego), father(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, A), gender(F, B), not(equal(E, F)), male(Alter).
;; 6
%tami:0, cross[aux]252up:4, spice:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
[ext],  husband(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter), male(Alter).
;; 7
%tami:0, cross[aux]252up:4, spice:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
[ext],  wife(A, Ego), parent(B, A), parent(Alter, B), gender(C, B), gender(C, Alter), male(Alter).
;; 8
%tami:1, cross[aux]252up:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 male(Ego), male(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(C, Ego), not(equal(B, C)).
;; 9
%tami:1, cross[aux]252up:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 male(Ego), female(Alter), parent(A, Alter), parent(Ego, A), gender(B, A), gender(C, Ego), not(equal(B, C)).
;; 10
%tami:1, cross[aux]252up:2, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  male(Ego), male(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 11
%tami:1, cross[aux]252up:2, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  male(Ego), male(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 12
%tami:1, cross[aux]252up:3, parents:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  male(Ego), female(Alter), mother(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 13
%tami:1, cross[aux]252up:3, parents:1, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  male(Ego), female(Alter), father(A, Alter), parent(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, A), gender(F, B), not(equal(E, F)).
;; 14
%tami:1, cross[aux]252up:4, spice:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
[ext],  male(Ego), husband(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(C, Ego).
;; 15
%tami:1, cross[aux]252up:4, spice:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
[ext],  male(Ego), wife(A, Alter), parent(B, A), parent(Ego, B), gender(C, B), gender(C, Ego).


toa(Alter, Ego) :-  toa[aux]25(Alter, Ego).
                |   toa[aux]25(Ego, Alter).
{"BroSo_DaHu_FaBroWi_FaSis_HuBroSo_WiMo"}
;; 0
%toa:0, toa[aux]25:0, cross[aux]25up1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 male(Ego), parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), female(Alter).
;; 1
%toa:0, toa[aux]25:0, cross[aux]25up1:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  male(Ego), parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(F, Alter), not(equal(E, F)), female(Alter).
;; 2
%toa:0, toa[aux]25:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 3
%toa:1, toa[aux]25:0, cross[aux]25up1:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Alter), parent(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, A), gender(E, Ego), not(equal(D, E)), female(Ego).
;; 4
%toa:1, toa[aux]25:0, cross[aux]25up1:1, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext],  male(Alter), parent(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Ego, D), gender(E, A), gender(F, Ego), not(equal(E, F)), female(Ego).
;; 5
%toa:1, toa[aux]25:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), mother(Ego, A).


toa[aux]25(Alter, Ego) :-  male(Ego), cross[aux]25up1(Alter, Ego), female(Alter).
                       |   wife(A, Ego), mother(Alter, A).
;; 0
%toa[aux]25:0, cross[aux]25up1:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), female(Alter).
;; 1
%toa[aux]25:0, cross[aux]25up1:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(F, Alter), not(equal(E, F)), female(Alter).
;; 2
%toa[aux]25:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).


turdu(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  parallel_cousin[aux]25(Alter, Ego), elder(Alter, Ego), female(Alter).
{"FaBroDa_MoSisDa_Sis"}
;; 0
%turdu:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%turdu:1, parallel_cousin[aux]25:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego), female(Alter).
;; 2
%turdu:1, parallel_cousin[aux]25:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D), elder(Alter, Ego), female(Alter).


yarunga(Alter, Ego) :-  male(Ego), brother(A, Ego), wife(Alter, A).
{"BroWi"}
;; 0
%yarunga:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


yuro(Alter, Ego) :-  female(Ego), cross[aux]25up1(Alter, Ego), female(Alter).
                 |   husband(A, Ego), mother(Alter, A).
{"FaBroWi_FaSis_HuMo"}
;; 0
%yuro:0, cross[aux]25up1:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 female(Ego), parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), female(Alter).
;; 1
%yuro:0, cross[aux]25up1:1, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  female(Ego), parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), spouse(Alter, D), gender(E, A), gender(F, Alter), not(equal(E, F)), female(Alter).
;; 2
%yuro:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).

