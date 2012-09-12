;;  Horn Clause Representation of Trobriand Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Trobriand") (author, "Bronislaw Malinowski") (date, "1929-01-01") (citation, "Bronislaw Malinowski, SEXUAL LIFE OF SAVAGES IN N.W. MELANESIA, 1929, Routledge, London") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (bwada, (tuwa)), (ina, (luta)), (luta, (ina)), (tuwa, (bwada)))
(userDefinedProperties, 
	(*clan, type, string, single_value, true, restricted_to, ("summer_bird", "fall_bird", "winter_bird", "spring_bird"))
  )


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


bwada(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(A, Alter), younger(Alter, Ego).
                  |   wife(A, Ego), sister(Alter, A), younger(Alter, A).
                  |   husband(A, Ego), brother(Alter, A), younger(Alter, A).
                  |   *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), younger(Alter, Ego), not(children(Alter, Ego)), not(sibling(Alter, Ego)), not(children(C, Ego), children(Alter, C)).
{"**_Bro_HuBro_Sis_WiSis"}
;; 0
%bwada:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), younger(Alter, Ego).
;; 1
%bwada:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 2
%bwada:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).
;; 3
%bwada:3, (not: children:0), (not: children:1), (not: sibling:0), (not: children:0, children:0), (not: children:0, children:1), (not: children:1, children:0), (not: children:1, children:1)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 male(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), younger(Alter, Ego), not(son(Alter, Ego)), not(daughter(Alter, Ego)), not(mother(C, Ego), father(D, Ego), child(Alter, C), child(Alter, D), not(equal(Alter, Ego))), not(son(E, Ego), son(Alter, E)), not(son(E, Ego), daughter(Alter, E)), not(daughter(E, Ego), son(Alter, E)), not(daughter(E, Ego), daughter(Alter, E)).
;; 4
%bwada:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), younger(Alter, Ego).
;; 5
%bwada:3, (not: children:0), (not: children:1), (not: sibling:0), (not: children:0, children:0), (not: children:0, children:1), (not: children:1, children:0), (not: children:1, children:1)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 female(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), younger(Alter, Ego), not(son(Alter, Ego)), not(daughter(Alter, Ego)), not(mother(C, Ego), father(D, Ego), child(Alter, C), child(Alter, D), not(equal(Alter, Ego))), not(son(E, Ego), son(Alter, E)), not(son(E, Ego), daughter(Alter, E)), not(daughter(E, Ego), son(Alter, E)), not(daughter(E, Ego), daughter(Alter, E)).


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


generation[aux]49(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]49(B, A), children(Alter, B).
;; 0
%generation[aux]49:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D).
;; 2
%generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D).
;; 3
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 4
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 5
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 6
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 7
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 8
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 9
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 10
%generation[aux]49:1, parents:0, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 11
%generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D).
;; 12
%generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D).
;; 13
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 14
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 15
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 16
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:0, generation[aux]49:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 17
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 18
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 19
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 20
%generation[aux]49:1, parents:1, generation[aux]49:1, parents:1, generation[aux]49:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).


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


ina(Alter, Ego) :-  mother(Alter, Ego).
                |   mother(A, Ego), sister(Alter, A).
                |   mother(A, Ego), *clan(B, A), *clan(B, Alter), female(Alter), not(equal(A, Alter)), not(mother(Alter, Ego)), not(mother(A, Ego), sister(Alter, A)), not(equal(Alter, Ego)), not(sibling(Alter, Ego)).
{"Mo_Mo**_MoSis"}
;; 0
%ina:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ina:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%ina:2, (not: sister:0, sibling:0), (not: sibling:0)%
 Lvl=0,  PC=1, S=0, Star=2,  {Mo**}  
 mother(A, Ego), *clan(B, A), *clan(B, Alter), female(Alter), not(equal(A, Alter)), not(mother(Alter, Ego)), not(equal(Alter, Ego)), not(mother(A, Ego), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), female(Alter)), not(mother(E, Ego), father(F, Ego), child(Alter, E), child(Alter, F), not(equal(Alter, Ego))).


iva(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
                |   female(Ego), brother(A, Ego), wife(Alter, A).
{"BroWi_HuSis"}
;; 0
%iva:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%iva:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


kada(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                 |   male(Ego), sister(A, Ego), children(Alter, A).
{"MoBro_SisDa_SisSo"}
;; 0
%kada:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%kada:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 2
%kada:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


kwava(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%kwava:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


latu(Alter, Ego) :-  children(Alter, Ego).
                 |   male(Ego), brother(A, Ego), children(Alter, A).
                 |   female(Ego), sister(A, Ego), children(Alter, A).
{"BroDa_BroSo_Da_SisDa_SisSo_So"}
;; 0
%latu:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%latu:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%latu:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 3
%latu:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 4
%latu:2, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 5
%latu:2, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


lubou(Alter, Ego) :-  wife(A, Ego), brother(Alter, A).
                  |   male(Ego), sister(A, Ego), husband(Alter, A).
{"SisHu_WiBro"}
;; 0
%lubou:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%lubou:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


luta(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(B, Alter), not(equal(A, B)).
                 |   *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(C, Alter), not(equal(B, C)), not(sibling(Alter, Ego)), not(parent(Alter, Ego)), not(child(Alter, Ego)), not(parent(D, Ego), parent(Alter, D)).
{"**_Bro_Sis"}
;; 0
%luta:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 1
%luta:1, (not: sibling:0), (not)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 male(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(C, Alter), not(equal(B, C)), not(parent(Alter, Ego)), not(child(Alter, Ego)), not(mother(D, Ego), father(E, Ego), child(Alter, D), child(Alter, E), not(equal(Alter, Ego))), not(parent(F, Ego), parent(Alter, F)).
;; 2
%luta:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 3
%luta:1, (not: sibling:0), (not)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 female(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(C, Alter), not(equal(B, C)), not(parent(Alter, Ego)), not(child(Alter, Ego)), not(mother(D, Ego), father(E, Ego), child(Alter, D), child(Alter, E), not(equal(Alter, Ego))), not(parent(F, Ego), parent(Alter, F)).


mwala(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%mwala:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


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


tabu(Alter, Ego) :-  parents(A, Ego), parents(Alter, A).
                 |   father(A, Ego), sister(Alter, A).
                 |   father(A, Ego), sister(B, A), daughter(Alter, B).
                 |   children(A, Ego), children(Alter, A).
                 |   female(Ego), brother(A, Ego), children(Alter, A).
{"BroDa_BroSo_DaDa_DaSo_FaFa_FaMo_FaSis_FaSisDa_MoFa_MoMo_SoDa_SoSo"}
;; 0
%tabu:0, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%tabu:0, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 2
%tabu:0, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 3
%tabu:0, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 4
%tabu:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 5
%tabu:2, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%tabu:3, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 7
%tabu:3, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 8
%tabu:3, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 9
%tabu:3, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 10
%tabu:4, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 11
%tabu:4, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).


tama(Alter, Ego) :-  tama[aux]49(Alter, Ego).
                 |   father(A, Ego), *clan(B, A), *clan(B, Alter), male(Alter), not(equal(A, Alter)), elder(Alter, Ego), not(tama[aux]49(Alter, Ego)), not(equal(Ego, Alter)), not(sibling(Alter, Ego)).
{"Fa_Fa**_FaBro_FaSisSo_MoSisHu"}
;; 0
%tama:0, tama[aux]49:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%tama:0, tama[aux]49:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%tama:0, tama[aux]49:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 3
%tama:0, tama[aux]49:3, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 4
%tama:1, (not: tama[aux]49:0), (not: tama[aux]49:1, brother:0, sibling:0), (not: tama[aux]49:2, sister:0, sibling:0), (not: tama[aux]49:3, sister:0, sibling:0), (not: sibling:0)%
 Lvl=0,  PC=1, S=0, Star=2,  {Fa**}  
 father(A, Ego), *clan(B, A), *clan(B, Alter), male(Alter), not(equal(A, Alter)), elder(Alter, Ego), not(equal(Ego, Alter)), not(father(Alter, Ego)), not(father(C, Ego), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter)), not(mother(F, Ego), mother(G, F), father(H, F), child(I, G), child(I, H), not(equal(I, F)), female(I), husband(Alter, I)), not(father(J, Ego), mother(K, J), father(L, J), child(M, K), child(M, L), not(equal(M, J)), female(M), son(Alter, M)), not(mother(N, Ego), father(O, Ego), child(Alter, N), child(Alter, O), not(equal(Alter, Ego))).


tama[aux]49(Alter, Ego) :-  father(Alter, Ego).
                        |   father(A, Ego), brother(Alter, A).
                        |   mother(A, Ego), sister(B, A), husband(Alter, B).
                        |   father(A, Ego), sister(B, A), son(Alter, B).
;; 0
%tama[aux]49:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 1
%tama[aux]49:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%tama[aux]49:2, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 3
%tama[aux]49:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


tuwa(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(A, Alter), elder(Alter, Ego).
                 |   wife(A, Ego), sister(Alter, A), elder(Alter, A).
                 |   husband(A, Ego), brother(Alter, A), elder(Alter, A).
                 |   *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), elder(Alter, Ego), not(parents(Alter, Ego)), not(sibling(Alter, Ego)), not(parents(C, Ego), parents(Alter, C)).
{"**_Bro_HuBro_Sis_WiSis"}
;; 0
%tuwa:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), elder(Alter, Ego).
;; 1
%tuwa:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 2
%tuwa:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 3
%tuwa:3, (not: parents:0), (not: parents:1), (not: sibling:0), (not: parents:0, parents:0), (not: parents:0, parents:1), (not: parents:1, parents:0), (not: parents:1, parents:1)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 male(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), elder(Alter, Ego), not(mother(Alter, Ego)), not(father(Alter, Ego)), not(mother(C, Ego), father(D, Ego), child(Alter, C), child(Alter, D), not(equal(Alter, Ego))), not(mother(E, Ego), mother(Alter, E)), not(mother(E, Ego), father(Alter, E)), not(father(E, Ego), mother(Alter, E)), not(father(E, Ego), father(Alter, E)).
;; 4
%tuwa:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter), elder(Alter, Ego).
;; 5
%tuwa:3, (not: parents:0), (not: parents:1), (not: sibling:0), (not: parents:0, parents:0), (not: parents:0, parents:1), (not: parents:1, parents:0), (not: parents:1, parents:1)%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
 female(Ego), *clan(A, Ego), *clan(A, Alter), gender(B, Ego), gender(B, Alter), elder(Alter, Ego), not(mother(Alter, Ego)), not(father(Alter, Ego)), not(mother(C, Ego), father(D, Ego), child(Alter, C), child(Alter, D), not(equal(Alter, Ego))), not(mother(E, Ego), mother(Alter, E)), not(mother(E, Ego), father(Alter, E)), not(father(E, Ego), mother(Alter, E)), not(father(E, Ego), father(Alter, E)).


yawa(Alter, Ego) :-  yawa[aux]49(Alter, Ego).
                 |   yawa[aux]49(Ego, Alter).
{"DaHu_HuFa_HuMo_SoWi_WiFa_WiMo"}
;; 0
%yawa:0, yawa[aux]49:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%yawa:0, yawa[aux]49:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%yawa:0, yawa[aux]49:1, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 3
%yawa:0, yawa[aux]49:1, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 4
%yawa:1, yawa[aux]49:0, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), mother(Ego, A).
;; 5
%yawa:1, yawa[aux]49:0, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), father(Ego, A).
;; 6
%yawa:1, yawa[aux]49:1, parents:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 husband(A, Alter), mother(Ego, A).
;; 7
%yawa:1, yawa[aux]49:1, parents:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 husband(A, Alter), father(Ego, A).


yawa[aux]49(Alter, Ego) :-  wife(A, Ego), parents(Alter, A).
                        |   husband(A, Ego), parents(Alter, A).
;; 0
%yawa[aux]49:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).
;; 1
%yawa[aux]49:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(Alter, A).
;; 2
%yawa[aux]49:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(Alter, A).
;; 3
%yawa[aux]49:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(Alter, A).

