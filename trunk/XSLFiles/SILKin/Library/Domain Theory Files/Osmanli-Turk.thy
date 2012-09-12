;;  Horn Clause Representation of Osmanli-Turk Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Osmanli-Turk") (author, "L. H. Morgan") (date, "1871-01-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], [eq], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

amim(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
{"FaBro"}
;; 0
%amim:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


amujamun_kusu(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(Alter, B).
                          |   father(A, Ego), brother(B, A), children(C, B), daughter(Alter, C).
{"FaBroDa_FaBroDaDa_FaBroSoDa"}
;; 0
%amujamun_kusu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 1
%amujamun_kusu:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%amujamun_kusu:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).


amujamun_kusunumk_ojasu(Alter, Ego) :-  father(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
{"FaBroDaHu"}
;; 0
%amujamun_kusunumk_ojasu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).


amujamun_oghlu(Alter, Ego) :-  father(A, Ego), brother(B, A), son(Alter, B).
                           |   father(A, Ego), brother(B, A), children(C, B), son(Alter, C).
{"FaBroDaSo_FaBroSo_FaBroSoSo"}
;; 0
%amujamun_oghlu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%amujamun_oghlu:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 2
%amujamun_oghlu:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).


amujamun_oghlunum_karusu(Alter, Ego) :-  father(A, Ego), brother(B, A), son(C, B), wife(Alter, C).
{"FaBroSoWi"}
;; 0
%amujamun_oghlunum_karusu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).


analukum(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%analukum:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


anam(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%anam:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


babalukum(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%babalukum:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


babam(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%babam:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


bajanak_um(Alter, Ego) :-  wife(A, Ego), sister(B, A), husband(Alter, B).
{"WiSisHu"}
;; 0
%bajanak_um:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


balduzum(Alter, Ego) :-  wife(A, Ego), sister(Alter, A).
{"WiSis"}
;; 0
%balduzum:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


dayim(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
{"MoBro"}
;; 0
%dayim:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


dayim_kusunum_kojasu(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
{"MoBroDaHu"}
;; 0
%dayim_kusunum_kojasu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).


dayim_oghlu(Alter, Ego) :-  mother(A, Ego), brother(B, A), son(Alter, B).
                        |   mother(A, Ego), brother(B, A), children(C, B), son(Alter, C).
{"MoBroDaSo_MoBroSo_MoBroSoSo"}
;; 0
%dayim_oghlu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%dayim_oghlu:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 2
%dayim_oghlu:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).


dayine_kusu(Alter, Ego) :-  mother(A, Ego), brother(B, A), daughter(Alter, B).
                        |   mother(A, Ego), brother(B, A), children(C, B), daughter(Alter, C).
{"MoBroDa_MoBroDaDa_MoBroSoDa"}
;; 0
%dayine_kusu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 1
%dayine_kusu:1, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%dayine_kusu:1, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).


dayine_oghlunum_karusu(Alter, Ego) :-  mother(A, Ego), brother(B, A), son(C, B), wife(Alter, C).
{"MoBroSoWi"}
;; 0
%dayine_oghlunum_karusu:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).


dedem(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%dedem:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%dedem:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


dedemin_anansu(Alter, Ego) :-  parents(A, Ego), parents(B, A), mother(Alter, B).
{"FaFaMo_FaMoMo_MoFaMo_MoMoMo"}
;; 0
%dedemin_anansu:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%dedemin_anansu:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 2
%dedemin_anansu:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%dedemin_anansu:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), mother(Alter, B).


dedemin_babasunum_karndashu(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), brother(Alter, C).
{"FaFaFaBro_FaFaMoBro_FaMoFaBro_FaMoMoBro_MoFaFaBro_MoFaMoBro_MoMoFaBro_MoMoMoBro"}
;; 0
%dedemin_babasunum_karndashu:0, parents:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 1
%dedemin_babasunum_karndashu:0, parents:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 2
%dedemin_babasunum_karndashu:0, parents:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 3
%dedemin_babasunum_karndashu:0, parents:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 4
%dedemin_babasunum_karndashu:0, parents:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 5
%dedemin_babasunum_karndashu:0, parents:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 6
%dedemin_babasunum_karndashu:0, parents:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 7
%dedemin_babasunum_karndashu:0, parents:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).


dedemin_babasunum_kuzkarndashu(Alter, Ego) :-  parents(A, Ego), parents(B, A), parents(C, B), sister(Alter, C).
{"FaFaFaSis_FaFaMoSis_FaMoFaSis_FaMoMoSis_MoFaFaSis_MoFaMoSis_MoMoFaSis_MoMoMoSis"}
;; 0
%dedemin_babasunum_kuzkarndashu:0, parents:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 1
%dedemin_babasunum_kuzkarndashu:0, parents:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 2
%dedemin_babasunum_kuzkarndashu:0, parents:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 3
%dedemin_babasunum_kuzkarndashu:0, parents:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 4
%dedemin_babasunum_kuzkarndashu:0, parents:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 5
%dedemin_babasunum_kuzkarndashu:0, parents:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 6
%dedemin_babasunum_kuzkarndashu:0, parents:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 7
%dedemin_babasunum_kuzkarndashu:0, parents:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


dedemin_babazu(Alter, Ego) :-  parents(A, Ego), parents(B, A), father(Alter, B).
{"FaFaFa_FaMoFa_MoFaFa_MoMoFa"}
;; 0
%dedemin_babazu:0, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 1
%dedemin_babazu:0, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 2
%dedemin_babazu:0, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 3
%dedemin_babazu:0, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), father(Alter, B).


dedemin_karndashu(Alter, Ego) :-  parents(A, Ego), father(B, A), brother(Alter, B).
{"FaFaBro_MoFaBro"}
;; 0
%dedemin_karndashu:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%dedemin_karndashu:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


dedemin_kuzkarndashu(Alter, Ego) :-  parents(A, Ego), father(B, A), sister(Alter, B).
{"FaFaSis_MoFaSis"}
;; 0
%dedemin_kuzkarndashu:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%dedemin_kuzkarndashu:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


diazam(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
{"MoSis"}
;; 0
%diazam:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


diazam_kusu(Alter, Ego) :-  mother(A, Ego), sister(B, A), daughter(Alter, B).
                        |   mother(A, Ego), sister(B, A), children(C, B), daughter(Alter, C).
{"MoSisDa_MoSisDaDa_MoSisSoDa"}
;; 0
%diazam_kusu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 1
%diazam_kusu:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 2
%diazam_kusu:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


diazam_kuzunum_kojaasu(Alter, Ego) :-  mother(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"MoSisDaHu"}
;; 0
%diazam_kuzunum_kojaasu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


diazam_oghlu(Alter, Ego) :-  mother(A, Ego), sister(B, A), son(Alter, B).
                         |   mother(A, Ego), sister(B, A), children(C, B), son(Alter, C).
{"MoSisDaSo_MoSisSo_MoSisSoSo"}
;; 0
%diazam_oghlu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 1
%diazam_oghlu:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 2
%diazam_oghlu:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).


diazam_oghlunum_karusu(Alter, Ego) :-  mother(A, Ego), sister(B, A), son(C, B), wife(Alter, C).
{"MoSisSoWi"}
;; 0
%diazam_oghlunum_karusu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


eltim(Alter, Ego) :-  husband(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi"}
;; 0
%eltim:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


enishtem(Alter, Ego) :-  parents(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu_MoSisHu"}
;; 0
%enishtem:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%enishtem:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


enishtim(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%enishtim:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


eoye_kuzkarndashum(Alter, Ego) :-  step_sister(Alter, Ego).
{"Stsis"}
;; 0
%eoye_kuzkarndashum:0, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%eoye_kuzkarndashum:0, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


gelinim(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
{"SoWi"}
;; 0
%gelinim:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).


georum_um(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
{"HuSis"}
;; 0
%georum_um:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


ginveyein(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%ginveyein:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


halam(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%halam:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


halam_kusu(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(Alter, B).
                       |   father(A, Ego), sister(B, A), children(C, B), daughter(Alter, C).
{"FaSisDa_FaSisDaDa_FaSisSoDa"}
;; 0
%halam_kusu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 1
%halam_kusu:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 2
%halam_kusu:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


halam_kusunum_kojasu(Alter, Ego) :-  father(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
{"FaSisDaHu"}
;; 0
%halam_kusunum_kojasu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).


halam_oghlu(Alter, Ego) :-  father(A, Ego), sister(B, A), son(Alter, B).
                        |   father(A, Ego), sister(B, A), children(C, B), son(Alter, C).
{"FaSisDaSo_FaSisSo_FaSisSoSo"}
;; 0
%halam_oghlu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 1
%halam_oghlu:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 2
%halam_oghlu:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).


halam_oghlunum_karusu(Alter, Ego) :-  father(A, Ego), sister(B, A), son(C, B), wife(Alter, C).
{"FaSisSoWi"}
;; 0
%halam_oghlunum_karusu:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


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


karndash_um(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%karndash_um:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


karndashlukun(Alter, Ego) :-  step_brother(Alter, Ego).
{"Stbro"}
;; 0
%karndashlukun:0, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 1
%karndashlukun:0, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


karndashmun_karsus(Alter, Ego) :-  brother(A, Ego), wife(Alter, A).
{"BroWi"}
;; 0
%karndashmun_karsus:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


karndashmun_toru(Alter, Ego) :-  brother(A, Ego), children(B, A), children(Alter, B).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo"}
;; 0
%karndashmun_toru:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 1
%karndashmun_toru:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 2
%karndashmun_toru:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 3
%karndashmun_toru:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).


karndashmun_torunum_torunu(Alter, Ego) :-  brother(A, Ego), children(B, A), children(C, B), children(Alter, C).
                                       |   female(Ego), sister(A, Ego), children(B, A), children(C, B), children(Alter, C).
{"BroDaDaDa_BroDaDaSo_BroDaSoDa_BroDaSoSo_BroSoDaDa_BroSoDaSo_BroSoSoDa_BroSoSoSo_SisDaDaDa_SisDaDaSo_SisDaSoDa_SisDaSoSo_SisSoDaDa_SisSoDaSo_SisSoSoDa_SisSoSoSo"}
;; 0
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 1
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 2
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 3
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 4
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 5
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 6
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 7
%karndashmun_torunum_torunu:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 8
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 9
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 10
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 11
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 12
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 13
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 14
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 15
%karndashmun_torunum_torunu:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).


karum(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%karum:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


kayim_babam(Alter, Ego) :-  wife(A, Ego), father(Alter, A).
{"WiFa"}
;; 0
%kayim_babam:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


kayinim(Alter, Ego) :-  spice(A, Ego), brother(Alter, A).
{"HuBro_WiBro"}
;; 0
%kayinim:0, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%kayinim:0, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


kayni_anam(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%kayni_anam:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%kayni_anam:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


kayni_babam(Alter, Ego) :-  husband(A, Ego), father(Alter, A).
{"HuFa"}
;; 0
%kayni_babam:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).


kayni_dedem(Alter, Ego) :-  spice(A, Ego), parents(B, A), father(Alter, B).
{"HuFaFa_HuMoFa_WiFaFa_WiMoFa"}
;; 0
%kayni_dedem:0, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 1
%kayni_dedem:0, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 2
%kayni_dedem:0, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 3
%kayni_dedem:0, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).


kayni_menem(Alter, Ego) :-  spice(A, Ego), parents(B, A), mother(Alter, B).
{"HuFaMo_HuMoMo_WiFaMo_WiMoMo"}
;; 0
%kayni_menem:0, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 1
%kayni_menem:0, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 2
%kayni_menem:0, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%kayni_menem:0, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).


kojam(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%kojam:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


kus_karndash_um(Alter, Ego) :-  sister(Alter, Ego).
{"Sis"}
;; 0
%kus_karndash_um:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


kus_karndashmun_toru(Alter, Ego) :-  sister(A, Ego), children(B, A), children(Alter, B).
                                 |   male(Ego), sister(A, Ego), children(B, A), children(C, B), children(Alter, C).
{"SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo"}
;; 0
%kus_karndashmun_toru:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 1
%kus_karndashmun_toru:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 2
%kus_karndashmun_toru:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 3
%kus_karndashmun_toru:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 4
%kus_karndashmun_toru:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 5
%kus_karndashmun_toru:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 6
%kus_karndashmun_toru:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 7
%kus_karndashmun_toru:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 8
%kus_karndashmun_toru:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 9
%kus_karndashmun_toru:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 10
%kus_karndashmun_toru:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 11
%kus_karndashmun_toru:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).


kusum(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%kusum:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


kuzlukum(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%kuzlukum:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


nenem(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
{"FaMo_MoMo"}
;; 0
%nenem:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%nenem:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


nenenim(Alter, Ego) :-  parents(A, Ego), mother(B, A), brother(Alter, B).
{"FaMoBro_MoMoBro"}
;; 0
%nenenim:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%nenenim:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


nenenim_kuzkarndashu(Alter, Ego) :-  parents(A, Ego), mother(B, A), sister(Alter, B).
{"FaMoSis_MoMoSis"}
;; 0
%nenenim_kuzkarndashu:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 1
%nenenim_kuzkarndashu:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


oghlum(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%oghlum:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


oghulukun(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%oghulukun:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


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


torun_um(Alter, Ego) :-  children(A, Ego), children(Alter, A).
{"DaDa_DaSo_SoDa_SoSo"}
;; 0
%torun_um:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%torun_um:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%torun_um:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%torun_um:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


torun_umun(Alter, Ego) :-  children(A, Ego), children(B, A), children(Alter, B).
{"DaDaDa_DaDaSo_DaSoDa_DaSoSo_SoDaDa_SoDaSo_SoSoDa_SoSoSo"}
;; 0
%torun_umun:0, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 1
%torun_umun:0, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 2
%torun_umun:0, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 3
%torun_umun:0, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 4
%torun_umun:0, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 5
%torun_umun:0, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%torun_umun:0, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%torun_umun:0, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).


torun_umun_torunu(Alter, Ego) :-  children(A, Ego), children(B, A), children(C, B), children(Alter, C).
{"DaDaDaDa_DaDaDaSo_DaDaSoDa_DaDaSoSo_DaSoDaDa_DaSoDaSo_DaSoSoDa_DaSoSoSo_SoDaDaDa_SoDaDaSo_SoDaSoDa_SoDaSoSo_SoSoDaDa_SoSoDaSo_SoSoSoDa_SoSoSoSo"}
;; 0
%torun_umun_torunu:0, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 1
%torun_umun_torunu:0, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 2
%torun_umun_torunu:0, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 3
%torun_umun_torunu:0, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 4
%torun_umun_torunu:0, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 5
%torun_umun_torunu:0, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 6
%torun_umun_torunu:0, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 7
%torun_umun_torunu:0, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 8
%torun_umun_torunu:0, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 9
%torun_umun_torunu:0, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 10
%torun_umun_torunu:0, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 11
%torun_umun_torunu:0, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 12
%torun_umun_torunu:0, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 13
%torun_umun_torunu:0, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 14
%torun_umun_torunu:0, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 15
%torun_umun_torunu:0, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).


yeyen_im(Alter, Ego) :-  siblings(A, Ego), children(Alter, A).
{"BroDa_BroSo_SisDa_SisSo"}
;; 0
%yeyen_im:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%yeyen_im:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%yeyen_im:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 3
%yeyen_im:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


yeyenum_karusu(Alter, Ego) :-  siblings(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_SisSoWi"}
;; 0
%yeyenum_karusu:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 1
%yeyenum_karusu:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


yeyenum_kojasu(Alter, Ego) :-  siblings(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_SisDaHu"}
;; 0
%yeyenum_kojasu:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 1
%yeyenum_kojasu:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).

