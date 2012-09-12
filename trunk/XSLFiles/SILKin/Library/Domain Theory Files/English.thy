;;  Horn Clause Representation of English Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "English") (author, "Gary Morris") (date, "2003-08-01") (non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(synonyms, (dad, daddy), (dad, pops), (sonny, sonny_boy))
(umbrellas, (ancestor, (dad, mom, late_father, grandparent, greatgrandparent, grandfather, grandmother, greatgrandfather, greatgrandmother)), (grandparent, (grandfather, grandmother)), (greatgrandparent, (greatgrandfather, greatgrandmother)), (kiddie, (daughter_dear, sonny)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ancestor(Alter, Ego) :-  parents(Alter, Ego).
                     |   parents(A, Ego), ancestor(Alter, A).
{"Fa_FaFa_FaFaFa_FaFaMo_FaMo_FaMoFa_FaMoMo_Mo_MoFa_MoFaFa_MoFaMo_MoMo_MoMoFa_MoMoMo"}
;; 0
%ancestor:0, parents:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ancestor:0, parents:1%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 2
%ancestor:1, parents:0, ancestor:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 3
%ancestor:1, parents:0, ancestor:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 4
%ancestor:1, parents:0, ancestor:1, parents:0, ancestor:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%ancestor:1, parents:0, ancestor:1, parents:0, ancestor:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 6
%ancestor:1, parents:0, ancestor:1, parents:1, ancestor:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 7
%ancestor:1, parents:0, ancestor:1, parents:1, ancestor:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 8
%ancestor:1, parents:1, ancestor:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 9
%ancestor:1, parents:1, ancestor:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 10
%ancestor:1, parents:1, ancestor:1, parents:0, ancestor:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 11
%ancestor:1, parents:1, ancestor:1, parents:0, ancestor:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 12
%ancestor:1, parents:1, ancestor:1, parents:1, ancestor:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 13
%ancestor:1, parents:1, ancestor:1, parents:1, ancestor:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


aunt(Alter, Ego) :-  parents(A, Ego), sister(Alter, A).
                 |   parents(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi_FaSis_MoBroWi_MoSis"}
;; 0
%aunt:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%aunt:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%aunt:1, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 3
%aunt:1, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


brother_in_law(Alter, Ego) :-  spice(A, Ego), brother(Alter, A).
                           |   sister(A, Ego), husband(Alter, A).
                           |   spice(A, Ego), sister(B, A), husband(Alter, B).
{"HuBro_HuSisHu_SisHu_WiBro_WiSisHu"}
;; 0
%brother_in_law:0, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%brother_in_law:0, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%brother_in_law:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 3
%brother_in_law:2, spice:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 4
%brother_in_law:2, spice:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


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


dad(Alter, Ego) :-  father(Alter, Ego), not(dead(Alter)).
{"Fa"}
;; 0
%dad:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego), not(dead(Alter)).


daddy(Alter, Ego) :-  father(Alter, Ego).
;; 0
%daddy:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).


daughter_dear(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%daughter_dear:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


daughter_in_law(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
{"SoWi"}
;; 0
%daughter_in_law:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).


ex_husband(Alter, Ego) :-  divorced(Alter, Ego), female(Ego), male(Alter).
                       |   wife(Ego, Alter), dead(Alter).
{"Hu"}
;; 0
%ex_husband:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 divorced(Alter, Ego), female(Ego), male(Alter).
;; 1
%ex_husband:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 wife(Ego, Alter), dead(Alter).


ex_wife(Alter, Ego) :-  divorced(Alter, Ego), male(Ego), female(Alter).
                    |   husband(Ego, Alter), dead(Alter).
{"Wi"}
;; 0
%ex_wife:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 divorced(Alter, Ego), male(Ego), female(Alter).
;; 1
%ex_wife:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 husband(Ego, Alter), dead(Alter).


father_in_law(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
{"HuFa_WiFa"}
;; 0
%father_in_law:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%father_in_law:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


first_cousin(Alter, Ego) :-  parents(A, Ego), siblings(B, A), children(Alter, B).
{"FaBroDa_FaBroSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoSisDa_MoSisSo"}
;; 0
%first_cousin:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%first_cousin:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%first_cousin:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%first_cousin:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%first_cousin:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%first_cousin:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%first_cousin:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 7
%first_cousin:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


first_cousin_once_removed(Alter, Ego) :-  parents(A, Ego), parents(B, A), siblings(C, B), children(Alter, C).
{"FaFaBroDa_FaFaBroSo_FaFaSisDa_FaFaSisSo_FaMoBroDa_FaMoBroSo_FaMoSisDa_FaMoSisSo_MoFaBroDa_MoFaBroSo_MoFaSisDa_MoFaSisSo_MoMoBroDa_MoMoBroSo_MoMoSisDa_MoMoSisSo"}
;; 0
%first_cousin_once_removed:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 1
%first_cousin_once_removed:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 2
%first_cousin_once_removed:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 3
%first_cousin_once_removed:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 4
%first_cousin_once_removed:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 5
%first_cousin_once_removed:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 6
%first_cousin_once_removed:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 7
%first_cousin_once_removed:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 8
%first_cousin_once_removed:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 9
%first_cousin_once_removed:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 10
%first_cousin_once_removed:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 11
%first_cousin_once_removed:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 12
%first_cousin_once_removed:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 13
%first_cousin_once_removed:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 14
%first_cousin_once_removed:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 15
%first_cousin_once_removed:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).


generation[aux]13(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]13(B, A), child(Alter, B).
;; 0
%generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


generation[aux]13junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]13junior(B, A), child(Alter, B).
;; 0
%generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]13junior:1, parents:0, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]13junior:1, parents:0, generation[aux]13junior:1, parents:0, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]13junior:1, parents:0, generation[aux]13junior:1, parents:1, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]13junior:1, parents:1, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]13junior:1, parents:1, generation[aux]13junior:1, parents:0, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]13junior:1, parents:1, generation[aux]13junior:1, parents:1, generation[aux]13junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]13senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]13senior(B, A), child(Alter, B).
;; 0
%generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]13senior:1, parents:0, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]13senior:1, parents:0, generation[aux]13senior:1, parents:0, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]13senior:1, parents:0, generation[aux]13senior:1, parents:1, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]13senior:1, parents:1, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]13senior:1, parents:1, generation[aux]13senior:1, parents:0, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]13senior:1, parents:1, generation[aux]13senior:1, parents:1, generation[aux]13senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


granddaughter(Alter, Ego) :-  children(A, Ego), daughter(Alter, A).
{"DaDa_SoDa"}
;; 0
%granddaughter:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%granddaughter:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


granddaughter_in_law(Alter, Ego) :-  children(A, Ego), son(B, A), wife(Alter, B).
{"DaSoWi_SoSoWi"}
;; 0
%granddaughter_in_law:0, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 son(A, Ego), son(B, A), wife(Alter, B).
;; 1
%granddaughter_in_law:0, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 daughter(A, Ego), son(B, A), wife(Alter, B).


grandfather(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%grandfather:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%grandfather:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


grandmother(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
{"FaMo_MoMo"}
;; 0
%grandmother:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%grandmother:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


grandparent(Alter, Ego) :-  parents(A, Ego), parents(Alter, A).
{"FaFa_FaMo_MoFa_MoMo"}
;; 0
%grandparent:0, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%grandparent:0, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%grandparent:0, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 3
%grandparent:0, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


grandson(Alter, Ego) :-  children(A, Ego), son(Alter, A).
{"DaSo_SoSo"}
;; 0
%grandson:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%grandson:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).


grandson_in_law(Alter, Ego) :-  children(A, Ego), daughter(B, A), husband(Alter, B).
{"DaDaHu_SoDaHu"}
;; 0
%grandson_in_law:0, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 son(A, Ego), daughter(B, A), husband(Alter, B).
;; 1
%grandson_in_law:0, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 daughter(A, Ego), daughter(B, A), husband(Alter, B).


greataunt(Alter, Ego) :-  parents(A, Ego), parents(B, A), sister(Alter, B).
                      |   parents(A, Ego), parents(B, A), brother(C, B), wife(Alter, C).
{"FaFaBroWi_FaFaSis_FaMoBroWi_FaMoSis_MoFaBroWi_MoFaSis_MoMoBroWi_MoMoSis"}
;; 0
%greataunt:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%greataunt:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%greataunt:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%greataunt:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%greataunt:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 5
%greataunt:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%greataunt:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 7
%greataunt:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).


greatgranddaughter(Alter, Ego) :-  children(A, Ego), children(B, A), daughter(Alter, B).
{"DaDaDa_DaSoDa_SoDaDa_SoSoDa"}
;; 0
%greatgranddaughter:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 1
%greatgranddaughter:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 2
%greatgranddaughter:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 3
%greatgranddaughter:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).


greatgrandfather(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(Alter, B).
{"FaFaFa_FaMoFa_MoFaFa_MoMoFa"}
;; 0
%greatgrandfather:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 1
%greatgrandfather:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 2
%greatgrandfather:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 3
%greatgrandfather:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


greatgrandmother(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaMo_FaMoMo_MoFaMo_MoMoMo"}
;; 0
%greatgrandmother:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%greatgrandmother:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 2
%greatgrandmother:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%greatgrandmother:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).


greatgrandparent(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(Alter, B).
{"FaFaFa_FaFaMo_FaMoFa_FaMoMo_MoFaFa_MoFaMo_MoMoFa_MoMoMo"}
;; 0
%greatgrandparent:0, parents:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%greatgrandparent:0, parents:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 2
%greatgrandparent:0, parents:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 3
%greatgrandparent:0, parents:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 4
%greatgrandparent:0, parents:1, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 5
%greatgrandparent:0, parents:1, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 6
%greatgrandparent:0, parents:1, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 7
%greatgrandparent:0, parents:1, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


greatgrandson(Alter, Ego) :-  children(A, Ego), children(B, A), son(Alter, B).
{"DaDaSo_DaSoSo_SoDaSo_SoSoSo"}
;; 0
%greatgrandson:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 1
%greatgrandson:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 2
%greatgrandson:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 3
%greatgrandson:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).


greatuncle(Alter, Ego) :-  parents(A, Ego), parents(B, A), brother(Alter, B).
                       |   parents(A, Ego), parents(B, A), sister(C, B), husband(Alter, C).
{"FaFaBro_FaFaSisHu_FaMoBro_FaMoSisHu_MoFaBro_MoFaSisHu_MoMoBro_MoMoSisHu"}
;; 0
%greatuncle:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%greatuncle:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%greatuncle:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%greatuncle:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%greatuncle:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 5
%greatuncle:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 6
%greatuncle:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 7
%greatuncle:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).


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


hubby(Alter, Ego) :-  husband(Alter, Ego), not(dead(Alter)), not(divorced(Alter, Ego)).
{"Hu"}
;; 0
%hubby:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego), not(dead(Alter)), not(divorced(Alter, Ego)).


kiddie(Alter, Ego) :-  children(Alter, Ego).
{"Da_So"}
;; 0
%kiddie:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%kiddie:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


late_father(Alter, Ego) :-  father(Alter, Ego), dead(Alter).
{"Fa"}
;; 0
%late_father:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego), dead(Alter).


mom(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%mom:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


mother_in_law(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%mother_in_law:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%mother_in_law:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


nephew(Alter, Ego) :-  siblings(A, Ego), son(Alter, A).
                   |   spice(A, Ego), siblings(B, A), son(Alter, B).
{"BroSo_HuBroSo_HuSisSo_SisSo_WiBroSo_WiSisSo"}
;; 0
%nephew:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%nephew:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 2
%nephew:1, spice:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%nephew:1, spice:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 4
%nephew:1, spice:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%nephew:1, spice:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


niece(Alter, Ego) :-  siblings(A, Ego), daughter(Alter, A).
                  |   spice(A, Ego), siblings(B, A), daughter(Alter, B).
{"BroDa_HuBroDa_HuSisDa_SisDa_WiBroDa_WiSisDa"}
;; 0
%niece:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 1
%niece:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%niece:1, spice:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 3
%niece:1, spice:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%niece:1, spice:1, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 5
%niece:1, spice:1, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


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


pops(Alter, Ego) :-  dad(Alter, Ego).
;; 0
%pops:0, dad:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego), not(dead(Alter)).


second_cousin(Alter, Ego) :-  parents(A, Ego), parents(B, A), siblings(C, B), children(D, C), children(Alter, D).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%second_cousin:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 1
%second_cousin:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 2
%second_cousin:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 3
%second_cousin:0, parents:0, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%second_cousin:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 5
%second_cousin:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 6
%second_cousin:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 7
%second_cousin:0, parents:0, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 8
%second_cousin:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 9
%second_cousin:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 10
%second_cousin:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 11
%second_cousin:0, parents:0, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 12
%second_cousin:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 13
%second_cousin:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 14
%second_cousin:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 15
%second_cousin:0, parents:0, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 16
%second_cousin:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 17
%second_cousin:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 18
%second_cousin:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 19
%second_cousin:0, parents:1, parents:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 20
%second_cousin:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 21
%second_cousin:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 22
%second_cousin:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 23
%second_cousin:0, parents:1, parents:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 24
%second_cousin:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 25
%second_cousin:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 26
%second_cousin:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 27
%second_cousin:0, parents:1, parents:1, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 28
%second_cousin:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 29
%second_cousin:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 30
%second_cousin:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 31
%second_cousin:0, parents:1, parents:1, siblings:1, sister:0, sibling:0, children:1, children:1%
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


sister_in_law(Alter, Ego) :-  spice(A, Ego), sister(Alter, A).
                          |   brother(A, Ego), wife(Alter, A).
                          |   spice(A, Ego), brother(B, A), wife(Alter, B).
{"BroWi_HuBroWi_HuSis_WiBroWi_WiSis"}
;; 0
%sister_in_law:0, spice:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%sister_in_law:0, spice:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%sister_in_law:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 3
%sister_in_law:2, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 4
%sister_in_law:2, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


son_in_law(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%son_in_law:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


sonny(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%sonny:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


sonny_boy(Alter, Ego) :-  son(Alter, Ego).
;; 0
%sonny_boy:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).


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


square[aux]13(Alter, Ego) :-  generation[aux]13(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]13(Alter, A).
;; 0
%square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 7
%square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 8
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 9
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 10
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 11
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 12
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 13
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 14
%square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 15
%square[aux]13:2, parents:0, square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 16
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 17
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 18
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 19
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 20
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 21
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 22
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 23
%square[aux]13:2, parents:0, square[aux]13:2, parents:0, square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 24
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 25
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 26
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 27
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 28
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 29
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 30
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 31
%square[aux]13:2, parents:0, square[aux]13:2, parents:1, square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 32
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 33
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 34
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 35
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 36
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 37
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 38
%square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 39
%square[aux]13:2, parents:1, square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 40
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 41
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 42
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 43
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 44
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 45
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 46
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 47
%square[aux]13:2, parents:1, square[aux]13:2, parents:0, square[aux]13:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 48
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 49
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 50
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 51
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 52
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 53
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:0, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 54
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:0, generation[aux]13:1, parents:1, generation[aux]13:1, parents:1, generation[aux]13:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 55
%square[aux]13:2, parents:1, square[aux]13:2, parents:1, square[aux]13:1%
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


step_son_in_law(Alter, Ego) :-  step_daughter(A, Ego), husband(Alter, A).
{"StdaHu"}
;; 0
%step_son_in_law:0, step_daughter:0%
 Lvl=-1,  PC=2, S=3, Star=0,  {StdaHu}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(C, B), daughter(C, A), husband(Alter, C).


uncle(Alter, Ego) :-  parents(A, Ego), brother(Alter, A).
                  |   parents(A, Ego), sister(B, A), husband(Alter, B).
{"FaBro_FaSisHu_MoBro_MoSisHu"}
;; 0
%uncle:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%uncle:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%uncle:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 3
%uncle:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


wifey(Alter, Ego) :-  wife(Alter, Ego), not(dead(Alter)), not(divorced(Alter, Ego)).
{"Wi"}
;; 0
%wifey:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego), not(dead(Alter)), not(divorced(Alter, Ego)).

