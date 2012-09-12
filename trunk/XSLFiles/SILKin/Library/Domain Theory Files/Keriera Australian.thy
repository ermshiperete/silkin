;;  Horn Clause Representation of Keriera Australian Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Keriera Australian") (author, "A. P. Elkin") (date, "1938-01-01") (citation, "A. P. Elkin THE AUSTRALIAN ABORIGINES, 1938, Doubleday Natural History Library, New York") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

babal(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%babal:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bap(Alter, Ego) :-  gender(A, Ego), sibling(B, Ego), gender(C, B), not(equal(A, C)), children(Alter, B).
                |   gender(A, Ego), sibling(B, Ego), gender(A, B), children(C, B), spouse(Alter, C).
                |   children(A, Ego), spouse(Alter, A).
                |   spice(A, Ego), gender(B, A), sibling(C, A), gender(B, C), children(D, C), spouse(Alter, D).
{"BroDa_BroDaHu_BroSo_BroSoWi_DaHu_HuBroDaHu_HuBroSoWi_SisDa_SisDaHu_SisSo_SisSoWi_SoWi_WiSisDaHu_WiSisSoWi"}
;; 0
%bap:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), son(Alter, D).
;; 1
%bap:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), daughter(Alter, D).
;; 2
%bap:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), son(E, D), spouse(Alter, E).
;; 3
%bap:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), daughter(E, D), spouse(Alter, E).
;; 4
%bap:2, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), spouse(Alter, A).
;; 5
%bap:2, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), spouse(Alter, A).
;; 6
%bap:3, spice:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroSoWi}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(F, E), spouse(Alter, F).
;; 7
%bap:3, spice:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroDaHu}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(F, E), spouse(Alter, F).
;; 8
%bap:3, spice:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisSoWi}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(F, E), spouse(Alter, F).
;; 9
%bap:3, spice:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisDaHu}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(F, E), spouse(Alter, F).
;; 10
%bap:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), son(Alter, D).
;; 11
%bap:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), daughter(Alter, D).
;; 12
%bap:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), son(E, D), spouse(Alter, E).
;; 13
%bap:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), daughter(E, D), spouse(Alter, E).


berai(Alter, Ego) :-  mother(Alter, Ego).
                  |   mother(A, Ego), sister(Alter, A).
{"Mo_MoSis"}
;; 0
%berai:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%berai:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


cross_cousin[aux]24(Alter, Ego) :-  parents(A, Ego), sibling(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%cross_cousin[aux]24:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%cross_cousin[aux]24:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%cross_cousin[aux]24:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%cross_cousin[aux]24:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).


djalel(Alter, Ego) :-  wife(Alter, Ego).
                   |   male(Ego), cross_cousin[aux]24(Alter, Ego).
                   |   wife(A, Ego), siblings(Alter, A).
                   |   male(Ego), siblings(A, Ego), spouse(Alter, A).
{"BroWi_FaSisDa_FaSisSo_MoBroDa_MoBroSo_SisHu_Wi_WiBro_WiSis"}
;; 0
%djalel:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%djalel:1, cross_cousin[aux]24:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%djalel:1, cross_cousin[aux]24:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%djalel:1, cross_cousin[aux]24:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%djalel:1, cross_cousin[aux]24:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 5
%djalel:2, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 6
%djalel:2, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 7
%djalel:3, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(Alter, C).
;; 8
%djalel:3, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(Alter, C).


djam(Alter, Ego) :-  djam[aux]24(Alter, Ego).
                 |   djam[aux]24(Ego, Alter).
{"BroDaDa_BroDaSo_BroSoDaHu_BroSoSoWi_DaDa_DaDaHu_DaSo_DaSoWi_FaFaBroWi_FaMo_FaMoBro_FaMoSis_HuBroSoDa_HuBroSoSo_HuFaFa_HuFaFaBro_HuMoMo_HuMoMoSis_MoFa_MoFaBro_MoFaSis_MoMoSisHu_SisDaDaHu_SisDaSoWi_SisSoDa_SisSoSo_SoDa_SoDaHu_SoSo_SoSoWi_WiFaFa_WiFaFaBro_WiMoMo_WiMoMoSis_WiSisDaDa_WiSisDaSo"}
;; 0
%djam:0, djam[aux]24:0, berai:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 male(Ego), father(A, Ego), mother(Alter, A).
;; 1
%djam:0, djam[aux]24:0, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%djam:0, djam[aux]24:1, ibal:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 male(Ego), mother(A, Ego), father(Alter, A).
;; 3
%djam:0, djam[aux]24:1, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%djam:0, djam[aux]24:2, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {FaMo}  
 male(Ego), father(A, Ego), father(B, A), wife(Alter, B).
;; 5
%djam:0, djam[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%djam:0, djam[aux]24:3, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {MoFa}  
 male(Ego), mother(A, Ego), mother(B, A), husband(Alter, B).
;; 7
%djam:0, djam[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%djam:0, djam[aux]24:4, berai:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 female(Ego), father(A, Ego), mother(Alter, A).
;; 9
%djam:0, djam[aux]24:4, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%djam:0, djam[aux]24:5, ibal:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 female(Ego), mother(A, Ego), father(Alter, A).
;; 11
%djam:0, djam[aux]24:5, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 12
%djam:0, djam[aux]24:6, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {FaMo}  
 female(Ego), father(A, Ego), father(B, A), wife(Alter, B).
;; 13
%djam:0, djam[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 14
%djam:0, djam[aux]24:7, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {MoFa}  
 female(Ego), mother(A, Ego), mother(B, A), husband(Alter, B).
;; 15
%djam:0, djam[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 16
%djam:0, djam[aux]24:8, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%djam:0, djam[aux]24:9, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%djam:0, djam[aux]24:10, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 19
%djam:0, djam[aux]24:11, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 20
%djam:0, djam[aux]24:12, spice:0, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 21
%djam:0, djam[aux]24:12, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 22
%djam:0, djam[aux]24:12, spice:1, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).
;; 23
%djam:0, djam[aux]24:12, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 24
%djam:0, djam[aux]24:13, spice:0, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 25
%djam:0, djam[aux]24:13, spice:0, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 26
%djam:0, djam[aux]24:13, spice:1, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 27
%djam:0, djam[aux]24:13, spice:1, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 28
%djam:1, djam[aux]24:0, berai:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 male(Alter), father(A, Alter), mother(Ego, A).
;; 29
%djam:1, djam[aux]24:0, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 male(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 30
%djam:1, djam[aux]24:1, ibal:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 male(Alter), mother(A, Alter), father(Ego, A).
;; 31
%djam:1, djam[aux]24:1, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 male(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 32
%djam:1, djam[aux]24:2, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSo}  
 male(Alter), father(A, Alter), father(B, A), wife(Ego, B).
;; 33
%djam:1, djam[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 male(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Ego, E).
;; 34
%djam:1, djam[aux]24:3, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSo}  
 male(Alter), mother(A, Alter), mother(B, A), husband(Ego, B).
;; 35
%djam:1, djam[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 male(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Ego, E).
;; 36
%djam:1, djam[aux]24:4, berai:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 female(Alter), father(A, Alter), mother(Ego, A).
;; 37
%djam:1, djam[aux]24:4, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 38
%djam:1, djam[aux]24:5, ibal:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 female(Alter), mother(A, Alter), father(Ego, A).
;; 39
%djam:1, djam[aux]24:5, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 40
%djam:1, djam[aux]24:6, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDa}  
 female(Alter), father(A, Alter), father(B, A), wife(Ego, B).
;; 41
%djam:1, djam[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Ego, E).
;; 42
%djam:1, djam[aux]24:7, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDa}  
 female(Alter), mother(A, Alter), mother(B, A), husband(Ego, B).
;; 43
%djam:1, djam[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Ego, E).
;; 44
%djam:1, djam[aux]24:8, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 male(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 45
%djam:1, djam[aux]24:9, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 male(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 46
%djam:1, djam[aux]24:10, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 47
%djam:1, djam[aux]24:11, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 48
%djam:1, djam[aux]24:12, spice:0, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 husband(A, Alter), father(B, A), father(Ego, B).
;; 49
%djam:1, djam[aux]24:12, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
 husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego).
;; 50
%djam:1, djam[aux]24:12, spice:1, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 wife(A, Alter), father(B, A), father(Ego, B).
;; 51
%djam:1, djam[aux]24:12, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
 wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego).
;; 52
%djam:1, djam[aux]24:13, spice:0, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 husband(A, Alter), mother(B, A), mother(Ego, B).
;; 53
%djam:1, djam[aux]24:13, spice:0, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
 husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).
;; 54
%djam:1, djam[aux]24:13, spice:1, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 wife(A, Alter), mother(B, A), mother(Ego, B).
;; 55
%djam:1, djam[aux]24:13, spice:1, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
 wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).


djam[aux]24(Alter, Ego) :-  male(Ego), father(A, Ego), berai(Alter, A).
                        |   male(Ego), mother(A, Ego), ibal(Alter, A).
                        |   male(Ego), father(A, Ego), ibal(B, A), wife(Alter, B).
                        |   male(Ego), mother(A, Ego), berai(B, A), husband(Alter, B).
                        |   female(Ego), father(A, Ego), berai(Alter, A).
                        |   female(Ego), mother(A, Ego), ibal(Alter, A).
                        |   female(Ego), father(A, Ego), ibal(B, A), wife(Alter, B).
                        |   female(Ego), mother(A, Ego), berai(B, A), husband(Alter, B).
                        |   male(Ego), mother(A, Ego), father(B, A), sister(Alter, B).
                        |   male(Ego), father(A, Ego), mother(B, A), brother(Alter, B).
                        |   female(Ego), mother(A, Ego), father(B, A), sister(Alter, B).
                        |   female(Ego), father(A, Ego), mother(B, A), brother(Alter, B).
                        |   spice(A, Ego), father(B, A), ibal(Alter, B).
                        |   spice(A, Ego), mother(B, A), berai(Alter, B).
;; 0
%djam[aux]24:0, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(Alter, A).
;; 1
%djam[aux]24:0, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%djam[aux]24:1, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(Alter, A).
;; 3
%djam[aux]24:1, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%djam[aux]24:2, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), wife(Alter, B).
;; 5
%djam[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%djam[aux]24:3, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), husband(Alter, B).
;; 7
%djam[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%djam[aux]24:4, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(Alter, A).
;; 9
%djam[aux]24:4, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%djam[aux]24:5, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(Alter, A).
;; 11
%djam[aux]24:5, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 12
%djam[aux]24:6, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), wife(Alter, B).
;; 13
%djam[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 14
%djam[aux]24:7, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), husband(Alter, B).
;; 15
%djam[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 16
%djam[aux]24:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%djam[aux]24:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%djam[aux]24:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 19
%djam[aux]24:11, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 20
%djam[aux]24:12, spice:0, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 21
%djam[aux]24:12, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 22
%djam[aux]24:12, spice:1, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(B, A), father(Alter, B).
;; 23
%djam[aux]24:12, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 24
%djam[aux]24:13, spice:0, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 25
%djam[aux]24:13, spice:0, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 26
%djam[aux]24:13, spice:1, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 27
%djam[aux]24:13, spice:1, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


generation[aux]24(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]24(B, A), child(Alter, B).
;; 0
%generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]24:1, parents:0, generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]24:1, parents:0, generation[aux]24:1, parents:0, generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]24:1, parents:0, generation[aux]24:1, parents:1, generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]24:1, parents:1, generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]24:1, parents:1, generation[aux]24:1, parents:0, generation[aux]24:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]24:1, parents:1, generation[aux]24:1, parents:1, generation[aux]24:0, sibling:0%
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


husb_term(Alter, Ego) :-  husband(Alter, Ego).
                      |   female(Ego), cross_cousin[aux]24(Alter, Ego).
                      |   husband(A, Ego), siblings(Alter, A).
                      |   female(Ego), siblings(A, Ego), spouse(Alter, A).
{"BroWi_FaSisDa_FaSisSo_Hu_HuBro_HuSis_MoBroDa_MoBroSo_SisHu"}
;; 0
%husb_term:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%husb_term:1, cross_cousin[aux]24:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%husb_term:1, cross_cousin[aux]24:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%husb_term:1, cross_cousin[aux]24:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%husb_term:1, cross_cousin[aux]24:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 5
%husb_term:2, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 6
%husb_term:2, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 7
%husb_term:3, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(Alter, C).
;; 8
%husb_term:3, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(Alter, C).


ibal(Alter, Ego) :-  father(Alter, Ego).
                 |   father(A, Ego), brother(Alter, A).
{"Fa_FaBro"}
;; 0
%ibal:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%ibal:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


kaga(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                 |   spice(A, Ego), father(Alter, A).
                 |   father(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu_HuFa_MoBro_WiFa"}
;; 0
%kaga:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%kaga:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 2
%kaga:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 3
%kaga:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


kalod(Alter, Ego) :-  kalod[aux]24(Alter, Ego).
                  |   kalod[aux]24(Ego, Alter).
{"BroDaDaHu_BroDaSoWi_BroSoDa_BroSoSo_DaDa_DaDaHu_DaSo_DaSoWi_FaFa_FaFaBro_FaFaSis_FaMoSisHu_HuBroDaDa_HuBroDaSo_HuFaMo_HuFaMoSis_HuMoFa_HuMoFaBro_MoFaBroWi_MoMo_MoMoBro_MoMoSis_SisDaDa_SisDaSo_SisSoDaHu_SisSoSoWi_SoDa_SoDaHu_SoSo_SoSoWi_WiFaMo_WiFaMoSis_WiMoFa_WiMoFaBro_WiSisSoDa_WiSisSoSo"}
;; 0
%kalod:0, kalod[aux]24:0, ibal:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 male(Ego), father(A, Ego), father(Alter, A).
;; 1
%kalod:0, kalod[aux]24:0, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%kalod:0, kalod[aux]24:1, berai:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 male(Ego), mother(A, Ego), mother(Alter, A).
;; 3
%kalod:0, kalod[aux]24:1, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%kalod:0, kalod[aux]24:2, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {MoMo}  
 male(Ego), mother(A, Ego), father(B, A), wife(Alter, B).
;; 5
%kalod:0, kalod[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%kalod:0, kalod[aux]24:3, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {FaFa}  
 male(Ego), father(A, Ego), mother(B, A), husband(Alter, B).
;; 7
%kalod:0, kalod[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%kalod:0, kalod[aux]24:4, ibal:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 female(Ego), father(A, Ego), father(Alter, A).
;; 9
%kalod:0, kalod[aux]24:4, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%kalod:0, kalod[aux]24:5, berai:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 female(Ego), mother(A, Ego), mother(Alter, A).
;; 11
%kalod:0, kalod[aux]24:5, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%kalod:0, kalod[aux]24:6, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {MoMo}  
 female(Ego), mother(A, Ego), father(B, A), wife(Alter, B).
;; 13
%kalod:0, kalod[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 14
%kalod:0, kalod[aux]24:7, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {FaFa}  
 female(Ego), father(A, Ego), mother(B, A), husband(Alter, B).
;; 15
%kalod:0, kalod[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 16
%kalod:0, kalod[aux]24:8, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%kalod:0, kalod[aux]24:9, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%kalod:0, kalod[aux]24:10, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 19
%kalod:0, kalod[aux]24:11, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 20
%kalod:0, kalod[aux]24:12, spice:0, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 21
%kalod:0, kalod[aux]24:12, spice:0, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 22
%kalod:0, kalod[aux]24:12, spice:1, berai:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 23
%kalod:0, kalod[aux]24:12, spice:1, berai:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 24
%kalod:0, kalod[aux]24:13, spice:0, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 25
%kalod:0, kalod[aux]24:13, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 26
%kalod:0, kalod[aux]24:13, spice:1, ibal:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 27
%kalod:0, kalod[aux]24:13, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 28
%kalod:1, kalod[aux]24:0, ibal:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 male(Alter), father(A, Alter), father(Ego, A).
;; 29
%kalod:1, kalod[aux]24:0, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 male(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 30
%kalod:1, kalod[aux]24:1, berai:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 male(Alter), mother(A, Alter), mother(Ego, A).
;; 31
%kalod:1, kalod[aux]24:1, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 male(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 32
%kalod:1, kalod[aux]24:2, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSo}  
 male(Alter), mother(A, Alter), father(B, A), wife(Ego, B).
;; 33
%kalod:1, kalod[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 male(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Ego, E).
;; 34
%kalod:1, kalod[aux]24:3, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSo}  
 male(Alter), father(A, Alter), mother(B, A), husband(Ego, B).
;; 35
%kalod:1, kalod[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 male(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Ego, E).
;; 36
%kalod:1, kalod[aux]24:4, ibal:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 female(Alter), father(A, Alter), father(Ego, A).
;; 37
%kalod:1, kalod[aux]24:4, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 38
%kalod:1, kalod[aux]24:5, berai:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 female(Alter), mother(A, Alter), mother(Ego, A).
;; 39
%kalod:1, kalod[aux]24:5, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 40
%kalod:1, kalod[aux]24:6, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDa}  
 female(Alter), mother(A, Alter), father(B, A), wife(Ego, B).
;; 41
%kalod:1, kalod[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Ego, E).
;; 42
%kalod:1, kalod[aux]24:7, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDa}  
 female(Alter), father(A, Alter), mother(B, A), husband(Ego, B).
;; 43
%kalod:1, kalod[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Ego, E).
;; 44
%kalod:1, kalod[aux]24:8, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 male(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 45
%kalod:1, kalod[aux]24:9, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 male(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 46
%kalod:1, kalod[aux]24:10, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 47
%kalod:1, kalod[aux]24:11, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 48
%kalod:1, kalod[aux]24:12, spice:0, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 husband(A, Alter), father(B, A), mother(Ego, B).
;; 49
%kalod:1, kalod[aux]24:12, spice:0, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoSoWi}  
 husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).
;; 50
%kalod:1, kalod[aux]24:12, spice:1, berai:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 wife(A, Alter), father(B, A), mother(Ego, B).
;; 51
%kalod:1, kalod[aux]24:12, spice:1, berai:1, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
 wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).
;; 52
%kalod:1, kalod[aux]24:13, spice:0, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 husband(A, Alter), mother(B, A), father(Ego, B).
;; 53
%kalod:1, kalod[aux]24:13, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
 husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego).
;; 54
%kalod:1, kalod[aux]24:13, spice:1, ibal:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 wife(A, Alter), mother(B, A), father(Ego, B).
;; 55
%kalod:1, kalod[aux]24:13, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
 wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego).


kalod[aux]24(Alter, Ego) :-  male(Ego), father(A, Ego), ibal(Alter, A).
                         |   male(Ego), mother(A, Ego), berai(Alter, A).
                         |   male(Ego), mother(A, Ego), ibal(B, A), wife(Alter, B).
                         |   male(Ego), father(A, Ego), berai(B, A), husband(Alter, B).
                         |   female(Ego), father(A, Ego), ibal(Alter, A).
                         |   female(Ego), mother(A, Ego), berai(Alter, A).
                         |   female(Ego), mother(A, Ego), ibal(B, A), wife(Alter, B).
                         |   female(Ego), father(A, Ego), berai(B, A), husband(Alter, B).
                         |   male(Ego), father(A, Ego), father(B, A), sister(Alter, B).
                         |   male(Ego), mother(A, Ego), mother(B, A), brother(Alter, B).
                         |   female(Ego), father(A, Ego), father(B, A), sister(Alter, B).
                         |   female(Ego), mother(A, Ego), mother(B, A), brother(Alter, B).
                         |   spice(A, Ego), father(B, A), berai(Alter, B).
                         |   spice(A, Ego), mother(B, A), ibal(Alter, B).
;; 0
%kalod[aux]24:0, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(Alter, A).
;; 1
%kalod[aux]24:0, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%kalod[aux]24:1, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(Alter, A).
;; 3
%kalod[aux]24:1, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%kalod[aux]24:2, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), wife(Alter, B).
;; 5
%kalod[aux]24:2, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%kalod[aux]24:3, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), husband(Alter, B).
;; 7
%kalod[aux]24:3, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%kalod[aux]24:4, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(Alter, A).
;; 9
%kalod[aux]24:4, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%kalod[aux]24:5, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(Alter, A).
;; 11
%kalod[aux]24:5, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%kalod[aux]24:6, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), wife(Alter, B).
;; 13
%kalod[aux]24:6, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 14
%kalod[aux]24:7, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), husband(Alter, B).
;; 15
%kalod[aux]24:7, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 16
%kalod[aux]24:8, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%kalod[aux]24:9, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%kalod[aux]24:10, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 19
%kalod[aux]24:11, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 20
%kalod[aux]24:12, spice:0, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 21
%kalod[aux]24:12, spice:0, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 22
%kalod[aux]24:12, spice:1, berai:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 23
%kalod[aux]24:12, spice:1, berai:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 24
%kalod[aux]24:13, spice:0, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 25
%kalod[aux]24:13, spice:0, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 26
%kalod[aux]24:13, spice:1, ibal:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 27
%kalod[aux]24:13, spice:1, ibal:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


marer(Alter, Ego) :-  sister(Alter, Ego).
{"Sis"}
;; 0
%marer:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


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


wal(Alter, Ego) :-  children(Alter, Ego).
                |   gender(A, Ego), sibling(B, Ego), gender(A, B), children(Alter, B).
                |   spice(A, Ego), gender(B, A), sibling(C, A), gender(B, C), children(Alter, C).
                |   gender(A, Ego), sibling(B, Ego), gender(C, B), not(equal(A, C)), children(D, B), spouse(Alter, D).
{"BroDa_BroDaHu_BroSo_BroSoWi_Da_HuBroDa_HuBroSo_SisDa_SisDaHu_SisSo_SisSoWi_So_WiSisDa_WiSisSo"}
;; 0
%wal:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%wal:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%wal:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), son(Alter, D).
;; 3
%wal:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), daughter(Alter, D).
;; 4
%wal:2, spice:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E).
;; 5
%wal:2, spice:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E).
;; 6
%wal:2, spice:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), son(Alter, E).
;; 7
%wal:2, spice:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(B, E), daughter(Alter, E).
;; 8
%wal:3, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), son(F, D), spouse(Alter, F).
;; 9
%wal:3, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), daughter(F, D), spouse(Alter, F).
;; 10
%wal:1, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), son(Alter, D).
;; 11
%wal:1, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), daughter(Alter, D).
;; 12
%wal:3, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), son(F, D), spouse(Alter, F).
;; 13
%wal:3, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(E, D), not(equal(A, E)), daughter(F, D), spouse(Alter, F).


yirmor(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                   |   spice(A, Ego), mother(Alter, A).
                   |   mother(A, Ego), brother(B, A), wife(Alter, B).
{"FaSis_HuMo_MoBroWi_WiMo"}
;; 0
%yirmor:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%yirmor:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 2
%yirmor:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 3
%yirmor:2, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).

