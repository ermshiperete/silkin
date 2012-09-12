;;  Horn Clause Representation of Magyar Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Magyar") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

amje(Alter, Ego) :-  father(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi"}
;; 0
%amje:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


ammeh(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%ammeh:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


apeh(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
{"FaBro"}
;; 0
%apeh:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


bajanakheh(Alter, Ego) :-  wife(A, Ego), sister(B, A), husband(Alter, B).
{"WiSisHu"}
;; 0
%bajanakheh:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


baltoozeh(Alter, Ego) :-  wife(A, Ego), sister(Alter, A).
{"WiSis"}
;; 0
%baltoozeh:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


baveh(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%baveh:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(Alter, B).
{"FaFaFa_FaMoFa_MoFaFa_MoMoFa"}
;; 0
%baveh_bavkaleh:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 1
%baveh_bavkaleh:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 2
%baveh_bavkaleh:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 3
%baveh_bavkaleh:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


baveh_mereh(Alter, Ego) :-  husband(A, Ego), father(Alter, A).
{"HuFa"}
;; 0
%baveh_mereh:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).


bavkaleh(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%bavkaleh:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%bavkaleh:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


bavkaleh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), father(Alter, C).
{"FaFaFaFa_FaFaMoFa_FaMoFaFa_FaMoMoFa_MoFaFaFa_MoFaMoFa_MoMoFaFa_MoMoMoFa"}
;; 0
%bavkaleh_bavkaleh:0, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 1
%bavkaleh_bavkaleh:0, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 2
%bavkaleh_bavkaleh:0, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 3
%bavkaleh_bavkaleh:0, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(Alter, C).
;; 4
%bavkaleh_bavkaleh:0, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(Alter, C).
;; 5
%bavkaleh_bavkaleh:0, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(Alter, C).
;; 6
%bavkaleh_bavkaleh:0, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), father(Alter, C).
;; 7
%bavkaleh_bavkaleh:0, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(Alter, C).


bavkaleh_bavkaleh_baveh(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), parents(D, C), father(Alter, D).
{"FaFaFaFaFa_FaFaFaMoFa_FaFaMoFaFa_FaFaMoMoFa_FaMoFaFaFa_FaMoFaMoFa_FaMoMoFaFa_FaMoMoMoFa_MoFaFaFaFa_MoFaFaMoFa_MoFaMoFaFa_MoFaMoMoFa_MoMoFaFaFa_MoMoFaMoFa_MoMoMoFaFa_MoMoMoMoFa"}
;; 0
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:0, parents:0, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 1
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:0, parents:0, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 2
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:0, parents:1, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 3
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:0, parents:1, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), father(Alter, D).
;; 4
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:1, parents:0, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 5
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:1, parents:0, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 6
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:1, parents:1, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 7
%bavkaleh_bavkaleh_baveh:0, parents:0, parents:1, parents:1, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), father(Alter, D).
;; 8
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:0, parents:0, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 9
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:0, parents:0, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 10
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:0, parents:1, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 11
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:0, parents:1, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), father(Alter, D).
;; 12
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:1, parents:0, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(Alter, D).
;; 13
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:1, parents:0, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), father(Alter, D).
;; 14
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:1, parents:1, parents:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(Alter, D).
;; 15
%bavkaleh_bavkaleh_baveh:0, parents:1, parents:1, parents:1, parents:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), father(Alter, D).


bavkaleh_mereh(Alter, Ego) :-  spice(A, Ego), parents(B, A), father(Alter, B).
{"HuFaFa_HuMoFa_WiFaFa_WiMoFa"}
;; 0
%bavkaleh_mereh:0, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 1
%bavkaleh_mereh:0, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 2
%bavkaleh_mereh:0, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 3
%bavkaleh_mereh:0, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).


bookeh(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
{"SoWi"}
;; 0
%bookeh:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).


bookeh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), son(C, B), wife(Alter, C).
{"FaSisSoWi"}
;; 0
%bookeh_ammeh:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


bookeh_bra(Alter, Ego) :-  brother(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi"}
;; 0
%bookeh_bra:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).


bookeh_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
{"MoBroSoWi_MoSisSoWi"}
;; 0
%bookeh_khaleh:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 1
%bookeh_khaleh:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


bra(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%bra:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bra_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), brother(Alter, C).
{"FaFaFaBro_FaMoFaBro_MoFaFaBro_MoMoFaBro"}
;; 0
%bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 1
%bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 2
%bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 3
%bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(Alter, B).
{"FaFaBro_MoFaBro"}
;; 0
%bra_bavkaleh:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%bra_bavkaleh:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(Alter, B).
{"FaMoBro_MoMoBro"}
;; 0
%bra_dapeereh:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%bra_dapeereh:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


bra_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), brother(Alter, C).
{"FaFaMoBro_FaMoMoBro_MoFaMoBro_MoMoMoBro"}
;; 0
%bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 1
%bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 2
%bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 3
%bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


braeh_khort(Alter, Ego) :-  step_mother(A, Ego), son(Alter, A).
                        |   step_father(A, Ego), son(Alter, A).
{"Hbro"}
;; 0
%braeh_khort:0, step_mother:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), son(Alter, C).
;; 1
%braeh_khort:1, step_father:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), son(Alter, C).


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


dameereh(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%dameereh:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


dapeereh(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
{"FaMo_MoMo"}
;; 0
%dapeereh:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%dapeereh:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


dapeereh_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), mother(Alter, C).
{"FaFaFaMo_FaFaMoMo_FaMoFaMo_FaMoMoMo_MoFaFaMo_MoFaMoMo_MoMoFaMo_MoMoMoMo"}
;; 0
%dapeereh_dapeereh:0, parents:0, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 1
%dapeereh_dapeereh:0, parents:0, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 2
%dapeereh_dapeereh:0, parents:0, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 3
%dapeereh_dapeereh:0, parents:0, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(Alter, C).
;; 4
%dapeereh_dapeereh:0, parents:1, parents:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(Alter, C).
;; 5
%dapeereh_dapeereh:0, parents:1, parents:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(Alter, C).
;; 6
%dapeereh_dapeereh:0, parents:1, parents:1, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(Alter, C).
;; 7
%dapeereh_dapeereh:0, parents:1, parents:1, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), mother(Alter, C).


dapeereh_mereh(Alter, Ego) :-  husband(A, Ego), parents(B, A), mother(Alter, B).
{"HuFaMo_HuMoMo"}
;; 0
%dapeereh_mereh:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%dapeereh_mereh:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).


dapeereh_zhumay(Alter, Ego) :-  wife(A, Ego), parents(B, A), mother(Alter, B).
{"WiFaMo_WiMoMo"}
;; 0
%dapeereh_zhumay:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%dapeereh_zhumay:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).


deeya(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%deeya:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaMo_FaMoMo_MoFaMo_MoMoMo"}
;; 0
%deeya_dapeereh:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%deeya_dapeereh:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 2
%deeya_dapeereh:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%deeya_dapeereh:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).


deya_zhunay(Alter, Ego) :-  wife(A, Ego), mother(Alter, A).
{"WiMo"}
;; 0
%deya_zhunay:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


georemeh(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
{"HuSis"}
;; 0
%georemeh:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


idemta(Alter, Ego) :-  husband(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi"}
;; 0
%idemta:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


keesa_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(Alter, B).
{"FaBroDa"}
;; 0
%keesa_apeh:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


keeza(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%keeza:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


keeza_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(Alter, B).
{"FaSisDa"}
;; 0
%keeza_ammeh:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


keeza_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu"}
;; 0
%keeza_apeh:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).


keeza_bra(Alter, Ego) :-  brother(A, Ego), daughter(Alter, A).
{"BroDa"}
;; 0
%keeza_bra:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).


keeza_bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(C, B), daughter(Alter, C).
{"FaFaBroDa_MoFaBroDa"}
;; 0
%keeza_bra_bavkaleh:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 1
%keeza_bra_bavkaleh:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).


keeza_bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(C, B), daughter(Alter, C).
{"FaMoBroDa_MoMoBroDa"}
;; 0
%keeza_bra_dapeereh:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 1
%keeza_bra_dapeereh:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).


keeza_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), daughter(Alter, B).
{"MoBroDa_MoSisDa"}
;; 0
%keeza_khaleh:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 1
%keeza_khaleh:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


keeza_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), daughter(Alter, A).
{"SisDa"}
;; 0
%keeza_khooshkeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


keeza_khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(C, B), daughter(Alter, C).
{"FaFaSisDa_MoFaSisDa"}
;; 0
%keeza_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 1
%keeza_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).


keeza_khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(C, B), daughter(Alter, C).
{"FaMoSisDa_MoMoSisDa"}
;; 0
%keeza_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 1
%keeza_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).


keeza_torneh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), children(C, B), children(D, C), daughter(Alter, D).
{"FaSisDaDaDa_FaSisDaSoDa_FaSisSoDaDa_FaSisSoSoDa"}
;; 0
%keeza_torneh_ammeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 1
%keeza_torneh_ammeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 2
%keeza_torneh_ammeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 3
%keeza_torneh_ammeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).


keeza_torneh_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), children(C, B), children(D, C), daughter(Alter, D).
{"FaBroDaDaDa_FaBroDaSoDa_FaBroSoDaDa_FaBroSoSoDa"}
;; 0
%keeza_torneh_apeh:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 1
%keeza_torneh_apeh:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 2
%keeza_torneh_apeh:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 3
%keeza_torneh_apeh:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).


keeza_torneh_bra(Alter, Ego) :-  brother(A, Ego), children(B, A), children(C, B), daughter(Alter, C).
{"BroDaDaDa_BroDaSoDa_BroSoDaDa_BroSoSoDa"}
;; 0
%keeza_torneh_bra:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 1
%keeza_torneh_bra:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 2
%keeza_torneh_bra:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 3
%keeza_torneh_bra:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).


keeza_torneh_bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(C, B), children(D, C), children(E, D), daughter(Alter, E).
{"FaFaBroDaDaDa_FaFaBroDaSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaBroSoDaDa_MoFaBroSoSoDa"}
;; 0
%keeza_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 1
%keeza_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 2
%keeza_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 3
%keeza_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%keeza_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%keeza_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%keeza_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 7
%keeza_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


keeza_torneh_bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(C, B), children(D, C), children(E, D), daughter(Alter, E).
{"FaMoBroDaDaDa_FaMoBroDaSoDa_FaMoBroSoDaDa_FaMoBroSoSoDa_MoMoBroDaDaDa_MoMoBroDaSoDa_MoMoBroSoDaDa_MoMoBroSoSoDa"}
;; 0
%keeza_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 1
%keeza_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 2
%keeza_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 3
%keeza_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%keeza_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%keeza_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%keeza_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 7
%keeza_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


keeza_torneh_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), children(C, B), children(D, C), daughter(Alter, D).
{"MoBroDaDaDa_MoBroDaSoDa_MoBroSoDaDa_MoBroSoSoDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDaDa_MoSisSoSoDa"}
;; 0
%keeza_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 1
%keeza_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 2
%keeza_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 3
%keeza_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 4
%keeza_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 5
%keeza_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 6
%keeza_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 7
%keeza_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).


keeza_torneh_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), children(B, A), children(C, B), daughter(Alter, C).
{"SisDaDaDa_SisDaSoDa_SisSoDaDa_SisSoSoDa"}
;; 0
%keeza_torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 1
%keeza_torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 2
%keeza_torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 3
%keeza_torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).


keeza_torneh_khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(C, B), children(D, C), children(E, D), daughter(Alter, E).
{"FaFaSisDaDaDa_FaFaSisDaSoDa_FaFaSisSoDaDa_FaFaSisSoSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoFaSisSoDaDa_MoFaSisSoSoDa"}
;; 0
%keeza_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 1
%keeza_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 2
%keeza_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 3
%keeza_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%keeza_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%keeza_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%keeza_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 7
%keeza_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


keeza_torneh_khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(C, B), children(D, C), children(E, D), daughter(Alter, E).
{"FaMoSisDaDaDa_FaMoSisDaSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoMoSisSoDaDa_MoMoSisSoSoDa"}
;; 0
%keeza_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 1
%keeza_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 2
%keeza_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 3
%keeza_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 4
%keeza_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), daughter(Alter, G).
;; 5
%keeza_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 6
%keeza_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), daughter(Alter, G).
;; 7
%keeza_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), daughter(Alter, G).


keeza_torneh_tonreh(Alter, Ego) :-  children(A, Ego), children(B, A), children(C, B), children(D, C), daughter(Alter, D).
{"DaDaDaDaDa_DaDaDaSoDa_DaDaSoDaDa_DaDaSoSoDa_DaSoDaDaDa_DaSoDaSoDa_DaSoSoDaDa_DaSoSoSoDa_SoDaDaDaDa_SoDaDaSoDa_SoDaSoDaDa_SoDaSoSoDa_SoSoDaDaDa_SoSoDaSoDa_SoSoSoDaDa_SoSoSoSoDa"}
;; 0
%keeza_torneh_tonreh:0, children:0, children:0, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
 son(A, Ego), son(B, A), son(C, B), son(D, C), daughter(Alter, D).
;; 1
%keeza_torneh_tonreh:0, children:0, children:0, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
 son(A, Ego), son(B, A), son(C, B), daughter(D, C), daughter(Alter, D).
;; 2
%keeza_torneh_tonreh:0, children:0, children:0, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
 son(A, Ego), son(B, A), daughter(C, B), son(D, C), daughter(Alter, D).
;; 3
%keeza_torneh_tonreh:0, children:0, children:0, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
 son(A, Ego), son(B, A), daughter(C, B), daughter(D, C), daughter(Alter, D).
;; 4
%keeza_torneh_tonreh:0, children:0, children:1, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
 son(A, Ego), daughter(B, A), son(C, B), son(D, C), daughter(Alter, D).
;; 5
%keeza_torneh_tonreh:0, children:0, children:1, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
 son(A, Ego), daughter(B, A), son(C, B), daughter(D, C), daughter(Alter, D).
;; 6
%keeza_torneh_tonreh:0, children:0, children:1, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
 son(A, Ego), daughter(B, A), daughter(C, B), son(D, C), daughter(Alter, D).
;; 7
%keeza_torneh_tonreh:0, children:0, children:1, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
 son(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), daughter(Alter, D).
;; 8
%keeza_torneh_tonreh:0, children:1, children:0, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
 daughter(A, Ego), son(B, A), son(C, B), son(D, C), daughter(Alter, D).
;; 9
%keeza_torneh_tonreh:0, children:1, children:0, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
 daughter(A, Ego), son(B, A), son(C, B), daughter(D, C), daughter(Alter, D).
;; 10
%keeza_torneh_tonreh:0, children:1, children:0, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
 daughter(A, Ego), son(B, A), daughter(C, B), son(D, C), daughter(Alter, D).
;; 11
%keeza_torneh_tonreh:0, children:1, children:0, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
 daughter(A, Ego), son(B, A), daughter(C, B), daughter(D, C), daughter(Alter, D).
;; 12
%keeza_torneh_tonreh:0, children:1, children:1, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
 daughter(A, Ego), daughter(B, A), son(C, B), son(D, C), daughter(Alter, D).
;; 13
%keeza_torneh_tonreh:0, children:1, children:1, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
 daughter(A, Ego), daughter(B, A), son(C, B), daughter(D, C), daughter(Alter, D).
;; 14
%keeza_torneh_tonreh:0, children:1, children:1, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), son(D, C), daughter(Alter, D).
;; 15
%keeza_torneh_tonreh:0, children:1, children:1, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), daughter(Alter, D).


keezaeh_khort(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%keezaeh_khort:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


keezah_tonreh(Alter, Ego) :-  children(A, Ego), children(B, A), daughter(Alter, B).
{"DaDaDa_DaSoDa_SoDaDa_SoSoDa"}
;; 0
%keezah_tonreh:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 1
%keezah_tonreh:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 2
%keezah_tonreh:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 3
%keezah_tonreh:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).


khal_zhuneh(Alter, Ego) :-  mother(A, Ego), brother(B, A), wife(Alter, B).
{"MoBroWi"}
;; 0
%khal_zhuneh:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


khaleh(Alter, Ego) :-  mother(A, Ego), siblings(Alter, A).
{"MoBro_MoSis"}
;; 0
%khaleh:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%khaleh:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


khesareh(Alter, Ego) :-  wife(A, Ego), father(Alter, A).
{"WiFa"}
;; 0
%khesareh:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


kheshareh(Alter, Ego) :-  husband(A, Ego), mother(Alter, A).
{"HuMo"}
;; 0
%kheshareh:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).


khooarzeh(Alter, Ego) :-  male(Ego), sister(A, Ego), children(Alter, A).
{"SisDa_SisSo"}
;; 0
%khooarzeh:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%khooarzeh:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


khooshkeeeh_khort(Alter, Ego) :-  step_mother(A, Ego), daughter(Alter, A).
                              |   step_father(A, Ego), daughter(Alter, A).
{"Hsis"}
;; 0
%khooshkeeeh_khort:0, step_mother:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), daughter(Alter, C).
;; 1
%khooshkeeeh_khort:1, step_father:0%
 Lvl=0,  PC=3, S=1, Star=0,  {Hsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), daughter(Alter, C).


khooshkeh(Alter, Ego) :-  sister(Alter, Ego).
{"Sis"}
;; 0
%khooshkeh:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


khooshkeh_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), sister(Alter, C).
{"FaFaFaSis_FaMoFaSis_MoFaFaSis_MoMoFaSis"}
;; 0
%khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 1
%khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 2
%khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 3
%khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(Alter, B).
{"FaFaSis_MoFaSis"}
;; 0
%khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(Alter, B).
{"FaMoSis_MoMoSis"}
;; 0
%khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


khooshkey_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), sister(Alter, C).
{"FaFaMoSis_FaMoMoSis_MoFaMoSis_MoMoMoSis"}
;; 0
%khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 1
%khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 2
%khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 3
%khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


lava(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%lava:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


lavareh(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%lavareh:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


laveh(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%laveh:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


laveh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), son(Alter, B).
{"FaSisSo"}
;; 0
%laveh_ammeh:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


laveh_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), son(Alter, B).
{"FaBroSo"}
;; 0
%laveh_apeh:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


laveh_bra(Alter, Ego) :-  brother(A, Ego), son(Alter, A).
{"BroSo"}
;; 0
%laveh_bra:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).


laveh_bra_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), brother(D, C), son(Alter, D).
{"FaFaFaBroSo_FaMoFaBroSo_MoFaFaBroSo_MoMoFaBroSo"}
;; 0
%laveh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 1
%laveh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 2
%laveh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 3
%laveh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).


laveh_bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(C, B), son(Alter, C).
{"FaFaBroSo_MoFaBroSo"}
;; 0
%laveh_bra_bavkaleh:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 1
%laveh_bra_bavkaleh:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).


laveh_bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(C, B), son(Alter, C).
{"FaMoBroSo_MoMoBroSo"}
;; 0
%laveh_bra_dapeereh:0, parents:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 1
%laveh_bra_dapeereh:0, parents:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).


laveh_bra_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), brother(D, C), son(Alter, D).
{"FaFaMoBroSo_FaMoMoBroSo_MoFaMoBroSo_MoMoMoBroSo"}
;; 0
%laveh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 1
%laveh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 2
%laveh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).
;; 3
%laveh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(Alter, F).


laveh_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), son(Alter, B).
{"MoBroSo_MoSisSo"}
;; 0
%laveh_khaleh:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%laveh_khaleh:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


laveh_kheeoreh(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
{"WiBro"}
;; 0
%laveh_kheeoreh:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


laveh_khooarzeh(Alter, Ego) :-  male(Ego), sister(A, Ego), children(B, A), son(Alter, B).
                            |   male(Ego), sister(A, Ego), children(B, A), children(C, B), son(Alter, C).
{"SisDaDaSo_SisDaSo_SisDaSoSo_SisSoDaSo_SisSoSo_SisSoSoSo"}
;; 0
%laveh_khooarzeh:0, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 1
%laveh_khooarzeh:0, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 2
%laveh_khooarzeh:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 3
%laveh_khooarzeh:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 4
%laveh_khooarzeh:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 5
%laveh_khooarzeh:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).


laveh_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), son(Alter, A).
{"SisSo"}
;; 0
%laveh_khooshkeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).


laveh_khooshkeh_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), sister(D, C), son(Alter, D).
{"FaFaFaSisSo_FaMoFaSisSo_MoFaFaSisSo_MoMoFaSisSo"}
;; 0
%laveh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 1
%laveh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 2
%laveh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 3
%laveh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).


laveh_khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(C, B), son(Alter, C).
{"FaFaSisSo_MoFaSisSo"}
;; 0
%laveh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 1
%laveh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).


laveh_khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(C, B), son(Alter, C).
{"FaMoSisSo_MoMoSisSo"}
;; 0
%laveh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 1
%laveh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).


laveh_khooshkey_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), sister(D, C), son(Alter, D).
{"FaFaMoSisSo_FaMoMoSisSo_MoFaMoSisSo_MoMoMoSisSo"}
;; 0
%laveh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 1
%laveh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 2
%laveh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 3
%laveh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).


laveh_tonreh(Alter, Ego) :-  children(A, Ego), children(B, A), son(Alter, B).
{"DaDaSo_DaSoSo_SoDaSo_SoSoSo"}
;; 0
%laveh_tonreh:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 1
%laveh_tonreh:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 2
%laveh_tonreh:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 3
%laveh_tonreh:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).


laveh_torneh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), children(C, B), children(D, C), son(Alter, D).
{"FaSisDaDaSo_FaSisDaSoSo_FaSisSoDaSo_FaSisSoSoSo"}
;; 0
%laveh_torneh_ammeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 1
%laveh_torneh_ammeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 2
%laveh_torneh_ammeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 3
%laveh_torneh_ammeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).


laveh_torneh_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), children(C, B), children(D, C), son(Alter, D).
{"FaBroDaDaSo_FaBroDaSoSo_FaBroSoDaSo_FaBroSoSoSo"}
;; 0
%laveh_torneh_apeh:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 1
%laveh_torneh_apeh:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 2
%laveh_torneh_apeh:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 3
%laveh_torneh_apeh:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).


laveh_torneh_bra(Alter, Ego) :-  brother(A, Ego), children(B, A), children(C, B), son(Alter, C).
{"BroDaDaSo_BroDaSoSo_BroSoDaSo_BroSoSoSo"}
;; 0
%laveh_torneh_bra:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 1
%laveh_torneh_bra:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 2
%laveh_torneh_bra:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 3
%laveh_torneh_bra:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).


laveh_torneh_bra_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), brother(D, C), children(E, D), children(F, E), son(Alter, F).
{"FaFaFaBroDaDaSo_FaFaFaBroDaSoSo_FaFaFaBroSoDaSo_FaFaFaBroSoSoSo_FaMoFaBroDaDaSo_FaMoFaBroDaSoSo_FaMoFaBroSoDaSo_FaMoFaBroSoSoSo_MoFaFaBroDaDaSo_MoFaFaBroDaSoSo_MoFaFaBroSoDaSo_MoFaFaBroSoSoSo_MoMoFaBroDaDaSo_MoMoFaBroDaSoSo_MoMoFaBroSoDaSo_MoMoFaBroSoSoSo"}
;; 0
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 1
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 2
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 3
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 4
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 5
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 6
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 7
%laveh_torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 8
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 9
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 10
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 11
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 12
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 13
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 14
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 15
%laveh_torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).


laveh_torneh_bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(C, B), children(D, C), children(E, D), son(Alter, E).
{"FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaSo_MoFaBroSoSoSo"}
;; 0
%laveh_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 1
%laveh_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 2
%laveh_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 3
%laveh_torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 4
%laveh_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%laveh_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%laveh_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%laveh_torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).


laveh_torneh_bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(C, B), children(D, C), children(E, D), son(Alter, E).
{"FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaSo_FaMoBroSoSoSo_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaSo_MoMoBroSoSoSo"}
;; 0
%laveh_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 1
%laveh_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 2
%laveh_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 3
%laveh_torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 4
%laveh_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%laveh_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%laveh_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%laveh_torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(G, F), son(Alter, G).


laveh_torneh_bra_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), brother(D, C), children(E, D), children(F, E), son(Alter, F).
{"FaFaMoBroDaDaSo_FaFaMoBroDaSoSo_FaFaMoBroSoDaSo_FaFaMoBroSoSoSo_FaMoMoBroDaDaSo_FaMoMoBroDaSoSo_FaMoMoBroSoDaSo_FaMoMoBroSoSoSo_MoFaMoBroDaDaSo_MoFaMoBroDaSoSo_MoFaMoBroSoDaSo_MoFaMoBroSoSoSo_MoMoMoBroDaDaSo_MoMoMoBroDaSoSo_MoMoMoBroSoDaSo_MoMoMoBroSoSoSo"}
;; 0
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 1
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 2
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 3
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 4
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 5
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 6
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 7
%laveh_torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 8
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 9
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 10
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 11
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 12
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), son(Alter, H).
;; 13
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 14
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), son(Alter, H).
;; 15
%laveh_torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), son(Alter, H).


laveh_torneh_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), children(C, B), children(D, C), son(Alter, D).
{"MoBroDaDaSo_MoBroDaSoSo_MoBroSoDaSo_MoBroSoSoSo_MoSisDaDaSo_MoSisDaSoSo_MoSisSoDaSo_MoSisSoSoSo"}
;; 0
%laveh_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 1
%laveh_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 2
%laveh_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 3
%laveh_torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 4
%laveh_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 5
%laveh_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 6
%laveh_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 7
%laveh_torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).


laveh_torneh_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), children(B, A), children(C, B), son(Alter, C).
{"SisDaDaSo_SisDaSoSo_SisSoDaSo_SisSoSoSo"}
;; 0
%laveh_torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 1
%laveh_torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 2
%laveh_torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 3
%laveh_torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).


laveh_torneh_khooshkeh_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), sister(D, C), children(E, D), children(F, E), son(Alter, F).
{"FaFaFaSisDaDaSo_FaFaFaSisDaSoSo_FaFaFaSisSoDaSo_FaFaFaSisSoSoSo_FaMoFaSisDaDaSo_FaMoFaSisDaSoSo_FaMoFaSisSoDaSo_FaMoFaSisSoSoSo_MoFaFaSisDaDaSo_MoFaFaSisDaSoSo_MoFaFaSisSoDaSo_MoFaFaSisSoSoSo_MoMoFaSisDaDaSo_MoMoFaSisDaSoSo_MoMoFaSisSoDaSo_MoMoFaSisSoSoSo"}
;; 0
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 1
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 2
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 3
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 4
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 5
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 6
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 7
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 8
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 9
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 10
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 11
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 12
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 13
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 14
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 15
%laveh_torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).


laveh_torneh_khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(C, B), children(D, C), children(E, D), son(Alter, E).
{"FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaSo_FaFaSisSoSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaSo_MoFaSisSoSoSo"}
;; 0
%laveh_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 1
%laveh_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 2
%laveh_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 3
%laveh_torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 4
%laveh_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%laveh_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%laveh_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%laveh_torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).


laveh_torneh_khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(C, B), children(D, C), children(E, D), son(Alter, E).
{"FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaSo_MoMoSisSoSoSo"}
;; 0
%laveh_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 1
%laveh_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 2
%laveh_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 3
%laveh_torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).
;; 4
%laveh_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(G, F), son(Alter, G).
;; 5
%laveh_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%laveh_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(G, F), son(Alter, G).
;; 7
%laveh_torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(G, F), son(Alter, G).


laveh_torneh_khooshkey_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), sister(D, C), children(E, D), children(F, E), son(Alter, F).
{"FaFaMoSisDaDaSo_FaFaMoSisDaSoSo_FaFaMoSisSoDaSo_FaFaMoSisSoSoSo_FaMoMoSisDaDaSo_FaMoMoSisDaSoSo_FaMoMoSisSoDaSo_FaMoMoSisSoSoSo_MoFaMoSisDaDaSo_MoFaMoSisDaSoSo_MoFaMoSisSoDaSo_MoFaMoSisSoSoSo_MoMoMoSisDaDaSo_MoMoMoSisDaSoSo_MoMoMoSisSoDaSo_MoMoMoSisSoSoSo"}
;; 0
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 1
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 2
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 3
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 4
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 5
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 6
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 7
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 8
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 9
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 10
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 11
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).
;; 12
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), son(Alter, H).
;; 13
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), son(Alter, H).
;; 14
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), son(Alter, H).
;; 15
%laveh_torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), son(Alter, H).


laveh_torneh_tonreh(Alter, Ego) :-  children(A, Ego), children(B, A), children(C, B), children(D, C), son(Alter, D).
{"DaDaDaDaSo_DaDaDaSoSo_DaDaSoDaSo_DaDaSoSoSo_DaSoDaDaSo_DaSoDaSoSo_DaSoSoDaSo_DaSoSoSoSo_SoDaDaDaSo_SoDaDaSoSo_SoDaSoDaSo_SoDaSoSoSo_SoSoDaDaSo_SoSoDaSoSo_SoSoSoDaSo_SoSoSoSoSo"}
;; 0
%laveh_torneh_tonreh:0, children:0, children:0, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
 son(A, Ego), son(B, A), son(C, B), son(D, C), son(Alter, D).
;; 1
%laveh_torneh_tonreh:0, children:0, children:0, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
 son(A, Ego), son(B, A), son(C, B), daughter(D, C), son(Alter, D).
;; 2
%laveh_torneh_tonreh:0, children:0, children:0, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
 son(A, Ego), son(B, A), daughter(C, B), son(D, C), son(Alter, D).
;; 3
%laveh_torneh_tonreh:0, children:0, children:0, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
 son(A, Ego), son(B, A), daughter(C, B), daughter(D, C), son(Alter, D).
;; 4
%laveh_torneh_tonreh:0, children:0, children:1, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
 son(A, Ego), daughter(B, A), son(C, B), son(D, C), son(Alter, D).
;; 5
%laveh_torneh_tonreh:0, children:0, children:1, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
 son(A, Ego), daughter(B, A), son(C, B), daughter(D, C), son(Alter, D).
;; 6
%laveh_torneh_tonreh:0, children:0, children:1, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
 son(A, Ego), daughter(B, A), daughter(C, B), son(D, C), son(Alter, D).
;; 7
%laveh_torneh_tonreh:0, children:0, children:1, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
 son(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), son(Alter, D).
;; 8
%laveh_torneh_tonreh:0, children:1, children:0, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
 daughter(A, Ego), son(B, A), son(C, B), son(D, C), son(Alter, D).
;; 9
%laveh_torneh_tonreh:0, children:1, children:0, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
 daughter(A, Ego), son(B, A), son(C, B), daughter(D, C), son(Alter, D).
;; 10
%laveh_torneh_tonreh:0, children:1, children:0, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
 daughter(A, Ego), son(B, A), daughter(C, B), son(D, C), son(Alter, D).
;; 11
%laveh_torneh_tonreh:0, children:1, children:0, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
 daughter(A, Ego), son(B, A), daughter(C, B), daughter(D, C), son(Alter, D).
;; 12
%laveh_torneh_tonreh:0, children:1, children:1, children:0, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
 daughter(A, Ego), daughter(B, A), son(C, B), son(D, C), son(Alter, D).
;; 13
%laveh_torneh_tonreh:0, children:1, children:1, children:0, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
 daughter(A, Ego), daughter(B, A), son(C, B), daughter(D, C), son(Alter, D).
;; 14
%laveh_torneh_tonreh:0, children:1, children:1, children:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), son(D, C), son(Alter, D).
;; 15
%laveh_torneh_tonreh:0, children:1, children:1, children:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(D, C), son(Alter, D).


laveheh_khort(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%laveheh_khort:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


mareh_khaleh(Alter, Ego) :-  mother(A, Ego), sister(B, A), husband(Alter, B).
{"MoSisHu"}
;; 0
%mareh_khaleh:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mereh(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%mereh:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


mereh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu"}
;; 0
%mereh_ammeh:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mereh_keeza_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"SisDaHu"}
;; 0
%mereh_keeza_khooshkeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


mereh_khooarzeh(Alter, Ego) :-  male(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"SisDaHu"}
;; 0
%mereh_khooarzeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


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


thumeh_laveh_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), son(C, B), wife(Alter, C).
{"FaBroSoWi"}
;; 0
%thumeh_laveh_apeh:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).


tornee(Alter, Ego) :-  children(A, Ego), daughter(Alter, A).
{"DaDa_SoDa"}
;; 0
%tornee:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%tornee:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


torneh(Alter, Ego) :-  children(A, Ego), son(Alter, A).
{"DaSo_SoSo"}
;; 0
%torneh:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%torneh:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).


torneh_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), children(C, B), children(Alter, C).
{"FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo"}
;; 0
%torneh_ammeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 1
%torneh_ammeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 2
%torneh_ammeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 3
%torneh_ammeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


torneh_apeh(Alter, Ego) :-  father(A, Ego), brother(B, A), children(C, B), children(Alter, C).
{"FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo"}
;; 0
%torneh_apeh:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 1
%torneh_apeh:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%torneh_apeh:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%torneh_apeh:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).


torneh_bra(Alter, Ego) :-  brother(A, Ego), children(B, A), children(Alter, B).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo"}
;; 0
%torneh_bra:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 1
%torneh_bra:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 2
%torneh_bra:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 3
%torneh_bra:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).


torneh_bra_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), brother(D, C), children(E, D), son(Alter, E).
{"FaFaFaBroDaSo_FaFaFaBroSoSo_FaMoFaBroDaSo_FaMoFaBroSoSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoMoFaBroDaSo_MoMoFaBroSoSo"}
;; 0
%torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 1
%torneh_bra_baveh_bavkaleh:0, parents:0, parents:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 2
%torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%torneh_bra_baveh_bavkaleh:0, parents:0, parents:1, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 4
%torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 5
%torneh_bra_baveh_bavkaleh:0, parents:1, parents:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 6
%torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 7
%torneh_bra_baveh_bavkaleh:0, parents:1, parents:1, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).


torneh_bra_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(C, B), children(D, C), children(Alter, D).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaBroSoDa_FaFaBroSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaBroSoDa_MoFaBroSoSo"}
;; 0
%torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 1
%torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 2
%torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 3
%torneh_bra_bavkaleh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 5
%torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 6
%torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 7
%torneh_bra_bavkaleh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).


torneh_bra_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(C, B), children(D, C), children(Alter, D).
{"FaMoBroDaDa_FaMoBroDaSo_FaMoBroSoDa_FaMoBroSoSo_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSoDa_MoMoBroSoSo"}
;; 0
%torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 1
%torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 2
%torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 3
%torneh_bra_dapeereh:0, parents:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 4
%torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 5
%torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 6
%torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 7
%torneh_bra_dapeereh:0, parents:1, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).


torneh_bra_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), brother(D, C), children(E, D), son(Alter, E).
{"FaFaMoBroDaSo_FaFaMoBroSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo"}
;; 0
%torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 1
%torneh_bra_deeya_dapeereh:0, parents:0, parents:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 2
%torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 3
%torneh_bra_deeya_dapeereh:0, parents:0, parents:1, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 4
%torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 5
%torneh_bra_deeya_dapeereh:0, parents:1, parents:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 6
%torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(Alter, G).
;; 7
%torneh_bra_deeya_dapeereh:0, parents:1, parents:1, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).


torneh_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), children(C, B), children(Alter, C).
{"MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo"}
;; 0
%torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 1
%torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%torneh_khaleh:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 5
%torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 6
%torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 7
%torneh_khaleh:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


torneh_khooarzeh(Alter, Ego) :-  male(Ego), sister(A, Ego), children(B, A), daughter(Alter, B).
                             |   male(Ego), sister(A, Ego), children(B, A), children(C, B), daughter(Alter, C).
{"SisDaDa_SisDaDaDa_SisDaSoDa_SisSoDa_SisSoDaDa_SisSoSoDa"}
;; 0
%torneh_khooarzeh:0, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 1
%torneh_khooarzeh:0, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 2
%torneh_khooarzeh:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 3
%torneh_khooarzeh:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 4
%torneh_khooarzeh:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 5
%torneh_khooarzeh:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).


torneh_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), children(B, A), children(Alter, B).
{"SisDaDa_SisDaSo_SisSoDa_SisSoSo"}
;; 0
%torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 1
%torneh_khooshkeh:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 2
%torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 3
%torneh_khooshkeh:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).


torneh_khooshkeh_baveh_bavkaleh(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(C, B), sister(D, C), children(E, D), son(Alter, E).
{"FaFaFaSisDaSo_FaFaFaSisSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo"}
;; 0
%torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 1
%torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 2
%torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 3
%torneh_khooshkeh_baveh_bavkaleh:0, parents:0, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 4
%torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 6
%torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 7
%torneh_khooshkeh_baveh_bavkaleh:0, parents:1, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).


torneh_khooshkeh_bavkaleh(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(C, B), children(D, C), children(Alter, D).
{"FaFaSisDaDa_FaFaSisDaSo_FaFaSisSoDa_FaFaSisSoSo_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSoDa_MoFaSisSoSo"}
;; 0
%torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 1
%torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 2
%torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 3
%torneh_khooshkeh_bavkaleh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 4
%torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 5
%torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 6
%torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 7
%torneh_khooshkeh_bavkaleh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


torneh_khooshkeh_dapeereh(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(C, B), children(D, C), children(Alter, D).
{"FaMoSisDaDa_FaMoSisDaSo_FaMoSisSoDa_FaMoSisSoSo_MoMoSisDaDa_MoMoSisDaSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 1
%torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 2
%torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 3
%torneh_khooshkeh_dapeereh:0, parents:0, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 4
%torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 5
%torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 6
%torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 7
%torneh_khooshkeh_dapeereh:0, parents:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


torneh_khooshkey_deeya_dapeereh(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(C, B), sister(D, C), children(E, D), son(Alter, E).
{"FaFaMoSisDaSo_FaFaMoSisSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo"}
;; 0
%torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 1
%torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 2
%torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 3
%torneh_khooshkey_deeya_dapeereh:0, parents:0, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 4
%torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 5
%torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).
;; 6
%torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(Alter, G).
;; 7
%torneh_khooshkey_deeya_dapeereh:0, parents:1, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(Alter, G).


torneh_tonreh(Alter, Ego) :-  children(A, Ego), children(B, A), children(C, B), children(Alter, C).
{"DaDaDaDa_DaDaDaSo_DaDaSoDa_DaDaSoSo_DaSoDaDa_DaSoDaSo_DaSoSoDa_DaSoSoSo_SoDaDaDa_SoDaDaSo_SoDaSoDa_SoDaSoSo_SoSoDaDa_SoSoDaSo_SoSoSoDa_SoSoSoSo"}
;; 0
%torneh_tonreh:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 1
%torneh_tonreh:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 2
%torneh_tonreh:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 3
%torneh_tonreh:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 4
%torneh_tonreh:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 5
%torneh_tonreh:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 6
%torneh_tonreh:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 7
%torneh_tonreh:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 8
%torneh_tonreh:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 9
%torneh_tonreh:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 10
%torneh_tonreh:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 11
%torneh_tonreh:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 12
%torneh_tonreh:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 13
%torneh_tonreh:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 14
%torneh_tonreh:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 15
%torneh_tonreh:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).


vustaoora(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
{"HuBro"}
;; 0
%vustaoora:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


zava_ammeh(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"FaSisDaHu"}
;; 0
%zava_ammeh:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


zava_bra(Alter, Ego) :-  brother(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu"}
;; 0
%zava_bra:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).


zava_khaleh(Alter, Ego) :-  mother(A, Ego), siblings(B, A), daughter(C, B), husband(Alter, C).
{"MoBroDaHu_MoSisDaHu"}
;; 0
%zava_khaleh:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 1
%zava_khaleh:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


zhunay(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%zhunay:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


zhuneh_bra(Alter, Ego) :-  brother(A, Ego), wife(Alter, A).
{"BroWi"}
;; 0
%zhuneh_bra:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


zhuneh_khooarzeh(Alter, Ego) :-  male(Ego), sister(A, Ego), son(B, A), wife(Alter, B).
{"SisSoWi"}
;; 0
%zhuneh_khooarzeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


zhuneh_khooshkeh(Alter, Ego) :-  female(Ego), sister(A, Ego), son(B, A), wife(Alter, B).
{"SisSoWi"}
;; 0
%zhuneh_khooshkeh:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


zur_baveh(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%zur_baveh:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).

