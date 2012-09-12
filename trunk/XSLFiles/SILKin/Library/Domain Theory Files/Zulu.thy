;;  Horn Clause Representation of Zulu Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Zulu") (author, "Max Gluckman") (date, "1950-01-01") (citation, "Max Gluckman, 'Kinship and Marriage Among the Lozi of N. Rhodesia and the Zulu of Natal' in Radcliffe-Brown and Forde, AFRICAN SYSTEMS OF KINSHIP AND MARRIAGE, 1950, Oxford University Press, London") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 1)
(overlaps, (baba_omkulu, (baba_omncane)), (baba_omncane, (baba_omkulu)), (mfo, (mnawa, mne)), (mnawa, (mfo)), (mne, (mfo)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

baba(Alter, Ego) :-  father(Alter, Ego).
                 |   parents(A, Ego), sister(B, A), husband(Alter, B).
                 |   spice(A, Ego), parents(B, A), sister(C, B), husband(Alter, C).
{"Fa_FaSisHu_HuFaSisHu_HuMoSisHu_MoSisHu_WiFaSisHu_WiMoSisHu"}
;; 0
%baba:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%baba:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 2
%baba:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 3
%baba:2, spice:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoSisHu}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 4
%baba:2, spice:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaSisHu}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 5
%baba:2, spice:1, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoSisHu}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 6
%baba:2, spice:1, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaSisHu}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).


baba_omkulu(Alter, Ego) :-  father(A, Ego), brother(Alter, A), elder(Alter, A).
                        |   husband(A, Ego), father(B, A), brother(Alter, B), elder(Alter, B).
{"FaBro_HuFaBro"}
;; 0
%baba_omkulu:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 1
%baba_omkulu:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, B).


baba_omncane(Alter, Ego) :-  father(A, Ego), brother(Alter, A), younger(Alter, A).
                         |   husband(A, Ego), father(B, A), brother(Alter, B), younger(Alter, B).
{"FaBro_HuFaBro"}
;; 0
%baba_omncane:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).
;; 1
%baba_omncane:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, B).


babakazi(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                     |   husband(A, Ego), father(B, A), sister(Alter, B).
{"FaSis_HuFaSis"}
;; 0
%babakazi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%babakazi:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


babamkulu(Alter, Ego) :-  babamkulu[aux]54(Alter, Ego).
                      |   spice(A, Ego), babamkulu[aux]54(Alter, A).
{"FaFa_FaFaBro_FaFaSisHu_FaMoBro_FaMoSisHu_HuFaFa_HuFaFaBro_HuFaFaSisHu_HuFaMoBro_HuFaMoSisHu_HuMoFa_HuMoFaBro_HuMoFaSisHu_HuMoMoBro_HuMoMoSisHu_MoFa_MoFaBro_MoFaSisHu_MoMoBro_MoMoSisHu_WiFaFa_WiFaFaBro_WiFaFaSisHu_WiFaMoBro_WiFaMoSisHu_WiMoFa_WiMoFaBro_WiMoFaSisHu_WiMoMoBro_WiMoMoSisHu"}
;; 0
%babamkulu:0, babamkulu[aux]54:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%babamkulu:0, babamkulu[aux]54:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%babamkulu:0, babamkulu[aux]54:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%babamkulu:0, babamkulu[aux]54:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%babamkulu:0, babamkulu[aux]54:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%babamkulu:0, babamkulu[aux]54:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 6
%babamkulu:0, babamkulu[aux]54:2, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 7
%babamkulu:0, babamkulu[aux]54:2, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%babamkulu:0, babamkulu[aux]54:2, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 9
%babamkulu:0, babamkulu[aux]54:2, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaSisHu}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 10
%babamkulu:1, spice:0, babamkulu[aux]54:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 11
%babamkulu:1, spice:0, babamkulu[aux]54:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 12
%babamkulu:1, spice:0, babamkulu[aux]54:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 13
%babamkulu:1, spice:0, babamkulu[aux]54:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 14
%babamkulu:1, spice:0, babamkulu[aux]54:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 15
%babamkulu:1, spice:0, babamkulu[aux]54:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 16
%babamkulu:1, spice:0, babamkulu[aux]54:2, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoMoSisHu}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 17
%babamkulu:1, spice:0, babamkulu[aux]54:2, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoFaSisHu}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 18
%babamkulu:1, spice:0, babamkulu[aux]54:2, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaMoSisHu}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 19
%babamkulu:1, spice:0, babamkulu[aux]54:2, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuFaFaSisHu}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 20
%babamkulu:1, spice:1, babamkulu[aux]54:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 21
%babamkulu:1, spice:1, babamkulu[aux]54:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).
;; 22
%babamkulu:1, spice:1, babamkulu[aux]54:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 23
%babamkulu:1, spice:1, babamkulu[aux]54:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 24
%babamkulu:1, spice:1, babamkulu[aux]54:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 25
%babamkulu:1, spice:1, babamkulu[aux]54:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 26
%babamkulu:1, spice:1, babamkulu[aux]54:2, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoMoSisHu}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 27
%babamkulu:1, spice:1, babamkulu[aux]54:2, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoFaSisHu}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 28
%babamkulu:1, spice:1, babamkulu[aux]54:2, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaMoSisHu}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).
;; 29
%babamkulu:1, spice:1, babamkulu[aux]54:2, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiFaFaSisHu}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), husband(Alter, F).


babamkulu[aux]54(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                             |   parents(A, Ego), parents(B, A), brother(Alter, B).
                             |   parents(A, Ego), parents(B, A), sister(C, B), husband(Alter, C).
;; 0
%babamkulu[aux]54:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 1
%babamkulu[aux]54:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 2
%babamkulu[aux]54:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%babamkulu[aux]54:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%babamkulu[aux]54:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%babamkulu[aux]54:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 6
%babamkulu[aux]54:2, parents:0, parents:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 7
%babamkulu[aux]54:2, parents:0, parents:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%babamkulu[aux]54:2, parents:1, parents:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 9
%babamkulu[aux]54:2, parents:1, parents:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).


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


cross_cousin[aux]54(Alter, Ego) :-  parents(A, Ego), sibling(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%cross_cousin[aux]54:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%cross_cousin[aux]54:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%cross_cousin[aux]54:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%cross_cousin[aux]54:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).


dade(Alter, Ego) :-  male(Ego), sister(Alter, Ego).
                 |   father(A, Ego), brother(B, A), daughter(Alter, B).
                 |   husband(A, Ego), sister(Alter, A).
{"FaBroDa_HuSis_Sis"}
;; 0
%dade:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%dade:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%dade:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


gen[aux]54(Alter, Ego) :-  siblings(Alter, Ego).
                       |   parents(A, Ego), gen[aux]54(B, A), children(Alter, B).
;; 0
%gen[aux]54:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]54:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


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


makhulu(Alter, Ego) :-  makhulu[aux]54(Alter, Ego).
                    |   spice(A, Ego), makhulu[aux]54(Alter, A).
{"HuMoFaBroWi_HuMoFaSis_HuMoMo_HuMoMoBroWi_HuMoMoSis_MoFaBroWi_MoFaSis_MoMo_MoMoBroWi_MoMoSis_WiMoFaBroWi_WiMoFaSis_WiMoMo_WiMoMoBroWi_WiMoMoSis"}
;; 0
%makhulu:0, makhulu[aux]54:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%makhulu:0, makhulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%makhulu:0, makhulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%makhulu:0, makhulu[aux]54:2, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 4
%makhulu:0, makhulu[aux]54:2, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 5
%makhulu:1, spice:0, makhulu[aux]54:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 6
%makhulu:1, spice:0, makhulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 7
%makhulu:1, spice:0, makhulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 8
%makhulu:1, spice:0, makhulu[aux]54:2, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoMoBroWi}  
 husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).
;; 9
%makhulu:1, spice:0, makhulu[aux]54:2, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {HuMoFaBroWi}  
 husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).
;; 10
%makhulu:1, spice:1, makhulu[aux]54:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).
;; 11
%makhulu:1, spice:1, makhulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 12
%makhulu:1, spice:1, makhulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 13
%makhulu:1, spice:1, makhulu[aux]54:2, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoMoBroWi}  
 wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).
;; 14
%makhulu:1, spice:1, makhulu[aux]54:2, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=2, Star=0,  {WiMoFaBroWi}  
 wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), wife(Alter, F).


makhulu[aux]54(Alter, Ego) :-  mother(A, Ego), mother(Alter, A).
                           |   mother(A, Ego), parents(B, A), sister(Alter, B).
                           |   mother(A, Ego), parents(B, A), brother(C, B), wife(Alter, C).
;; 0
%makhulu[aux]54:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 1
%makhulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%makhulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%makhulu[aux]54:2, parents:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 4
%makhulu[aux]54:2, parents:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).


makoti(Alter, Ego) :-  female(Ego), brother(A, Ego), wife(Alter, A).
{"BroWi"}
;; 0
%makoti:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


malokazana(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                       |   son(A, Ego), wife(B, A), sister(Alter, B).
                       |   gen[aux]54(A, Ego), son(B, A), wife(Alter, B).
                       |   husband(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
                       |   wife(A, Ego), sister(B, A), son(C, B), wife(Alter, C).
{"BroSoWi_FaBroDaSoWi_FaBroSoSoWi_FaSisDaSoWi_FaSisSoSoWi_HuBroSoWi_HuSisSoWi_MoBroDaSoWi_MoBroSoSoWi_MoSisDaSoWi_MoSisSoSoWi_SisSoWi_SoWi_SoWiSis_WiSisSoWi"}
;; 0
%malokazana:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%malokazana:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SoWiSis}  
 son(A, Ego), wife(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%malokazana:2, gen[aux]54:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 3
%malokazana:2, gen[aux]54:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).
;; 4
%malokazana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), wife(Alter, F).
;; 5
%malokazana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 6
%malokazana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), wife(Alter, F).
;; 7
%malokazana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 8
%malokazana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), wife(Alter, F).
;; 9
%malokazana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 10
%malokazana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), wife(Alter, F).
;; 11
%malokazana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), wife(Alter, F).
;; 12
%malokazana:3, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 13
%malokazana:3, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisSoWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 14
%malokazana:4, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisSoWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).


malume(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                   |   mother(A, Ego), brother(B, A), wife(Alter, B).
                   |   spice(A, Ego), mother(B, A), brother(Alter, B).
                   |   spice(A, Ego), mother(B, A), brother(C, B), wife(Alter, C).
{"HuMoBro_HuMoBroWi_MoBro_MoBroWi_WiMoBro_WiMoBroWi"}
;; 0
%malume:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%malume:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 2
%malume:2, spice:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%malume:2, spice:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%malume:3, spice:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoBroWi}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 5
%malume:3, spice:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoBroWi}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).


mame(Alter, Ego) :-  mother(Alter, Ego).
                 |   mother(A, Ego), sister(Alter, A).
                 |   father(A, Ego), brother(B, A), wife(Alter, B).
                 |   father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
                 |   husband(A, Ego), mother(B, A), sister(Alter, B).
                 |   husband(A, Ego), father(B, A), brother(C, B), wife(Alter, C).
                 |   husband(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).
{"FaBroWi_HuFaBroWi_HuMoSis_HuStmo_Mo_MoSis_Stmo"}
;; 0
%mame:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%mame:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mame:2, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 3
%mame:3%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).
;; 4
%mame:4, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 5
%mame:5, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaBroWi}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 6
%mame:6%
 Lvl=1,  PC=2, S=2, Star=0,  {HuStmo}  
 husband(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).


mamekulu(Alter, Ego) :-  mamekulu[aux]54(Alter, Ego).
                     |   spice(A, Ego), mamekulu[aux]54(Alter, A).
{"FaFaSis_FaMo_FaMoSis_FaStmo_HuFaFaSis_HuFaMo_HuFaMoSis_HuFaStmo_WiFaFaSis_WiFaMo_WiFaMoSis_WiFaStmo"}
;; 0
%mamekulu:0, mamekulu[aux]54:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 1
%mamekulu:0, mamekulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%mamekulu:0, mamekulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%mamekulu:0, mamekulu[aux]54:2%
 Lvl=2,  PC=3, S=1, Star=0,  {FaStmo}  
 father(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).
;; 4
%mamekulu:1, spice:0, mamekulu[aux]54:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 5
%mamekulu:1, spice:0, mamekulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
 husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 6
%mamekulu:1, spice:0, mamekulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaSis}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 7
%mamekulu:1, spice:0, mamekulu[aux]54:2%
 Lvl=2,  PC=3, S=2, Star=0,  {HuFaStmo}  
 husband(A, Ego), father(B, A), father(C, B), mother(D, B), wife(Alter, C), not(equal(Alter, D)).
;; 8
%mamekulu:1, spice:1, mamekulu[aux]54:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 9
%mamekulu:1, spice:1, mamekulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
 wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 10
%mamekulu:1, spice:1, mamekulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaSis}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%mamekulu:1, spice:1, mamekulu[aux]54:2%
 Lvl=2,  PC=3, S=2, Star=0,  {WiFaStmo}  
 wife(A, Ego), father(B, A), father(C, B), mother(D, B), wife(Alter, C), not(equal(Alter, D)).


mamekulu[aux]54(Alter, Ego) :-  father(A, Ego), mother(Alter, A).
                            |   father(A, Ego), parents(B, A), sister(Alter, B).
                            |   father(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).
;; 0
%mamekulu[aux]54:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 1
%mamekulu[aux]54:1, parents:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%mamekulu[aux]54:1, parents:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%mamekulu[aux]54:2%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, A), wife(Alter, B), not(equal(Alter, C)).


mamezala(Alter, Ego) :-  husband(A, Ego), parents(Alter, A).
{"HuFa_HuMo"}
;; 0
%mamezala:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%mamezala:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).


mfo(Alter, Ego) :-  male(Ego), brother(Alter, Ego), younger(Alter, Ego).
                |   female(Ego), sister(Alter, Ego), elder(Alter, Ego).
                |   husband(A, Ego), brother(Alter, A).
                |   father(A, Ego), brother(B, A), son(Alter, B).
                |   mother(A, Ego), sister(B, A), daughter(Alter, B).
{"Bro_FaBroSo_HuBro_MoSisDa_Sis"}
;; 0
%mfo:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%mfo:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%mfo:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%mfo:3, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 4
%mfo:4, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


mka(Alter, Ego) :-  wife(Alter, Ego).
                |   male(Ego), brother(A, Ego), wife(Alter, A).
{"BroWi_Wi"}
;; 0
%mka:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).
;; 1
%mka:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


mkwe(Alter, Ego) :-  mka(A, Ego), father(Alter, A).
                 |   mka(A, Ego), father(B, A), brother(Alter, B).
{"BroWiFa_BroWiFaBro_WiFa_WiFaBro"}
;; 0
%mkwe:0, mka:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 1
%mkwe:0, mka:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiFa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), father(Alter, D).
;; 2
%mkwe:1, mka:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%mkwe:1, mka:1, brother:0, sibling:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaBro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), male(Alter).


mkwekazi(Alter, Ego) :-  mka(A, Ego), mother(Alter, A).
                     |   mka(A, Ego), parents(B, A), sister(Alter, B).
{"BroWiFaSis_BroWiMo_BroWiMoSis_WiFaSis_WiMo_WiMoSis"}
;; 0
%mkwekazi:0, mka:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%mkwekazi:0, mka:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {BroWiMo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(Alter, D).
;; 2
%mkwekazi:1, mka:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
 wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%mkwekazi:1, mka:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%mkwekazi:1, mka:1, brother:0, sibling:0, parents:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiMoSis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).
;; 5
%mkwekazi:1, mka:1, brother:0, sibling:0, parents:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {BroWiFaSis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), father(E, D), mother(F, E), father(G, E), child(Alter, F), child(Alter, G), not(equal(Alter, E)), female(Alter).


mkwenyana(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
                      |   daughter(A, Ego), husband(Alter, A).
                      |   gen[aux]54(A, Ego), daughter(B, A), husband(Alter, B).
                      |   daughter(A, Ego), husband(B, A), sister(Alter, B).
                      |   spice(A, Ego), sister(B, A), daughter(C, B), husband(Alter, C).
                      |   husband(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
                      |   husband(A, Ego), sister(B, A), husband(Alter, B).
{"BroDaHu_DaHu_DaHuSis_FaBroDaDaHu_FaBroSoDaHu_FaSisDaDaHu_FaSisSoDaHu_HuBroDaHu_HuSisDaHu_HuSisHu_MoBroDaDaHu_MoBroSoDaHu_MoSisDaDaHu_MoSisSoDaHu_SisDaHu_SisHu_WiSisDaHu"}
;; 0
%mkwenyana:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%mkwenyana:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 2
%mkwenyana:2, gen[aux]54:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 3
%mkwenyana:2, gen[aux]54:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).
;; 4
%mkwenyana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 5
%mkwenyana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 6
%mkwenyana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 7
%mkwenyana:2, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 8
%mkwenyana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 9
%mkwenyana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 10
%mkwenyana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), husband(Alter, F).
;; 11
%mkwenyana:2, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), husband(Alter, F).
;; 12
%mkwenyana:3, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuSis}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 13
%mkwenyana:4, spice:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuSisDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 14
%mkwenyana:4, spice:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {WiSisDaHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 15
%mkwenyana:5, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroDaHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 16
%mkwenyana:6, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mlamu(Alter, Ego) :-  mka(A, Ego), siblings(Alter, A).
                  |   mka(A, Ego), brother(B, A), children(Alter, B).
                  |   mka(A, Ego), brother(B, A), wife(Alter, B).
{"BroWiBro_BroWiBroDa_BroWiBroSo_BroWiBroWi_BroWiSis_WiBro_WiBroDa_WiBroSo_WiBroWi_WiSis"}
;; 0
%mlamu:0, mka:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%mlamu:0, mka:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mlamu:0, mka:1, brother:0, sibling:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiBro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 3
%mlamu:0, mka:1, brother:0, sibling:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {BroWiSis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 4
%mlamu:1, mka:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%mlamu:1, mka:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%mlamu:1, mka:1, brother:0, sibling:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroWiBroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(Alter, G).
;; 7
%mlamu:1, mka:1, brother:0, sibling:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {BroWiBroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(Alter, G).
;; 8
%mlamu:2, mka:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).
;; 9
%mlamu:2, mka:1, brother:0, sibling:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {BroWiBroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), wife(Alter, G).


mna(Alter, Ego) :-  wife(A, Ego), sister(B, A), husband(Alter, B).
{"WiSisHu"}
;; 0
%mna:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mnawa(Alter, Ego) :-  female(Ego), sister(Alter, Ego), younger(Alter, Ego).
{"Sis"}
;; 0
%mnawa:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).


mne(Alter, Ego) :-  male(Ego), brother(Alter, Ego), elder(Alter, Ego).
                |   female(Ego), brother(Alter, Ego).
{"Bro"}
;; 0
%mne:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%mne:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


mtana(Alter, Ego) :-  children(Alter, Ego).
                  |   gen[aux]54(A, Ego), children(Alter, A).
                  |   daughter(A, Ego), husband(B, A), brother(Alter, B).
                  |   spice(A, Ego), sister(B, A), children(Alter, B).
                  |   husband(A, Ego), brother(B, A), children(Alter, B).
{"BroDa_BroSo_Da_DaHuBro_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_HuBroDa_HuBroSo_HuSisDa_HuSisSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_So_WiSisDa_WiSisSo"}
;; 0
%mtana:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%mtana:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 3
%mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 4
%mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 5
%mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 6
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 7
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 8
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 9
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 10
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 11
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 12
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 13
%mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 14
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 15
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 16
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 17
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 18
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 19
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 20
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 21
%mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 22
%mtana:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {DaHuBro}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 23
%mtana:3, spice:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 24
%mtana:3, spice:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 25
%mtana:3, spice:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 26
%mtana:3, spice:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 27
%mtana:4, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 28
%mtana:4, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


mzala(Alter, Ego) :-  cross_cousin[aux]54(Alter, Ego).
                  |   husband(A, Ego), cross_cousin[aux]54(Alter, A).
{"FaSisDa_FaSisSo_HuFaSisDa_HuFaSisSo_HuMoBroDa_HuMoBroSo_MoBroDa_MoBroSo"}
;; 0
%mzala:0, cross_cousin[aux]54:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%mzala:0, cross_cousin[aux]54:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%mzala:0, cross_cousin[aux]54:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%mzala:0, cross_cousin[aux]54:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%mzala:1, cross_cousin[aux]54:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 5
%mzala:1, cross_cousin[aux]54:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
 husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 6
%mzala:1, cross_cousin[aux]54:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 7
%mzala:1, cross_cousin[aux]54:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
 husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).


mzikulu(Alter, Ego) :-  mtana(A, Ego), children(Alter, A).
{"BroDaDa_BroDaSo_BroSoDa_BroSoSo_DaDa_DaHuBroDa_DaHuBroSo_DaSo_FaBroDaDaDa_FaBroDaDaSo_FaBroDaSoDa_FaBroDaSoSo_FaBroSoDaDa_FaBroSoDaSo_FaBroSoSoDa_FaBroSoSoSo_FaSisDaDaDa_FaSisDaDaSo_FaSisDaSoDa_FaSisDaSoSo_FaSisSoDaDa_FaSisSoDaSo_FaSisSoSoDa_FaSisSoSoSo_HuBroDaDa_HuBroDaSo_HuBroSoDa_HuBroSoSo_HuSisDaDa_HuSisDaSo_HuSisSoDa_HuSisSoSo_MoBroDaDaDa_MoBroDaDaSo_MoBroDaSoDa_MoBroDaSoSo_MoBroSoDaDa_MoBroSoDaSo_MoBroSoSoDa_MoBroSoSoSo_MoSisDaDaDa_MoSisDaDaSo_MoSisDaSoDa_MoSisDaSoSo_MoSisSoDaDa_MoSisSoDaSo_MoSisSoSoDa_MoSisSoSoSo_SisDaDa_SisDaSo_SisSoDa_SisSoSo_SoDa_SoSo_WiSisDaDa_WiSisDaSo_WiSisSoDa_WiSisSoSo"}
;; 0
%mzikulu:0, mtana:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%mzikulu:0, mtana:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%mzikulu:0, mtana:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%mzikulu:0, mtana:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 5
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 6
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 7
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 9
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 10
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 11
%mzikulu:0, mtana:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 12
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 13
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 14
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 15
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 16
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 17
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 18
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 19
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 21
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 23
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 26
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 27
%mzikulu:0, mtana:1, gen[aux]54:1, parents:0, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 28
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 29
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 30
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 31
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 33
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 34
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 35
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 36
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 37
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 38
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 39
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 40
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 41
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 42
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 43
%mzikulu:0, mtana:1, gen[aux]54:1, parents:1, gen[aux]54:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 44
%mzikulu:0, mtana:2, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuBroSo}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 45
%mzikulu:0, mtana:2, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {DaHuBroDa}  
 daughter(A, Ego), husband(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 46
%mzikulu:0, mtana:3, spice:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 47
%mzikulu:0, mtana:3, spice:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 48
%mzikulu:0, mtana:3, spice:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 49
%mzikulu:0, mtana:3, spice:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 50
%mzikulu:0, mtana:3, spice:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 51
%mzikulu:0, mtana:3, spice:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 52
%mzikulu:0, mtana:3, spice:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 53
%mzikulu:0, mtana:3, spice:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 54
%mzikulu:0, mtana:4, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 55
%mzikulu:0, mtana:4, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 56
%mzikulu:0, mtana:4, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 57
%mzikulu:0, mtana:4, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).


ndoda_myeni(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%ndoda_myeni:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


parallel_cousin[aux]54(Alter, Ego) :-  parents(A, Ego), sibling(B, A), child(Alter, B), gender(C, A), gender(C, B).
;; 0
%parallel_cousin[aux]54:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(E, D).
;; 1
%parallel_cousin[aux]54:0, parents:1, sibling:0%
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


ukanina(Alter, Ego) :-  mother(A, Ego), sister(B, A), son(Alter, B).
{"MoSisSo"}
;; 0
%ukanina:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


zakwetu(Alter, Ego) :-  husband(A, Ego), wife(Alter, A), not(equal(Alter, Ego)).
                    |   husband(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi_HuWi"}
;; 0
%zakwetu:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
 husband(A, Ego), wife(Alter, A), not(equal(Alter, Ego)).
;; 1
%zakwetu:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).

