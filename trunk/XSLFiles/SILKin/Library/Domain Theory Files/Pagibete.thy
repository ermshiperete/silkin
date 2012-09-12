;;  Horn Clause Representation of Pagibete Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Pagibete") (author, "JeDene Reader") (date, "1997-02-27") (non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (abako_mo_bomoto, (abako_mo_tadi)), (abako_mo_tadi, (abako_mo_bomoto)), (mako_mo_bomoto, (mako_mo_tadi)), (mako_mo_tadi, (mako_mo_bomoto)), (mamako, (momako)), (mboyako_mo_mbomoto_mo_nkaye, (mboyako_mo_tadi_mo_nkaye)), (mboyako_mo_mbomoto_mo_noko, (mboyako_mo_tadi_mo_noko)), (mboyako_mo_tadi_mo_nkaye, (mboyako_mo_mbomoto_mo_nkaye)), (mboyako_mo_tadi_mo_noko, (mboyako_mo_mbomoto_mo_noko)), (momako, (mamako)), (nkalako_mo_mbomoto, (nkalako_mo_tadi)), (nkalako_mo_mbomoto_mo_noko, (nkalako_mo_tadi_mo_noko)), (nkalako_mo_tadi, (nkalako_mo_mbomoto)), (nkalako_mo_tadi_mo_noko, (nkalako_mo_mbomoto_mo_noko)), (noko_mo_bomoto, (noko_mo_tadi)), (noko_mo_tadi, (noko_mo_bomoto)))
(umbrellas, (mboya, (nboyako)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

abako(Alter, Ego) :-  mama(A, Ego), mama_mo_nkay(B, A), husband(Alter, B).
                  |   spice(A, Ego), father(Alter, A).
{"HuFa_MoSisHu_WiFa"}
;; 0
%abako:0, mama:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).
;; 1
%abako:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 2
%abako:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


abako_mo_bomoto(Alter, Ego) :-  father(A, Ego), brother(Alter, A), elder(Alter, A).
{"FaBro"}
;; 0
%abako_mo_bomoto:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).


abako_mo_tadi(Alter, Ego) :-  father(A, Ego), brother(Alter, A), younger(Alter, A).
{"FaBro"}
;; 0
%abako_mo_tadi:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).


baba(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%baba:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


basako(Alter, Ego) :-  mama_mo_nkay(A, Ego), husband(Alter, A).
{"SisHu"}
;; 0
%basako:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).


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


generation[aux]41(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]41(B, A), child(Alter, B).
;; 0
%generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


generation[aux]41junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]41junior(B, A), child(Alter, B).
;; 0
%generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]41junior:1, parents:0, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]41junior:1, parents:0, generation[aux]41junior:1, parents:0, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]41junior:1, parents:0, generation[aux]41junior:1, parents:1, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]41junior:1, parents:1, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]41junior:1, parents:1, generation[aux]41junior:1, parents:0, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]41junior:1, parents:1, generation[aux]41junior:1, parents:1, generation[aux]41junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]41senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]41senior(B, A), child(Alter, B).
;; 0
%generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]41senior:1, parents:0, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]41senior:1, parents:0, generation[aux]41senior:1, parents:0, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]41senior:1, parents:0, generation[aux]41senior:1, parents:1, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]41senior:1, parents:1, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]41senior:1, parents:1, generation[aux]41senior:1, parents:0, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]41senior:1, parents:1, generation[aux]41senior:1, parents:1, generation[aux]41senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).


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


mako(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%mako:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%mako:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


mako_mo_bomoto(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), elder(Alter, A).
{"MoSis"}
;; 0
%mako_mo_bomoto:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).


mako_mo_tadi(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), younger(Alter, A).
{"MoSis"}
;; 0
%mako_mo_tadi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).


mama(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%mama:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


mama_mo_nkay(Alter, Ego) :-  sister(Alter, Ego).
{"Sis"}
;; 0
%mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


mama_mo_noko(Alter, Ego) :-  brother(Alter, Ego).
{"Bro"}
;; 0
%mama_mo_noko:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


mamako(Alter, Ego) :-  mother(A, Ego), siblings(B, A), miki_mo_noko(Alter, B).
                   |   father(A, Ego), mama_mo_noko(B, A), miki_mo_noko(Alter, B).
                   |   father(A, Ego), mama_mo_nkay(B, A), younger(B, A), miki_mo_noko(Alter, B).
{"FaBroSo_FaSisSo_MoBroSo_MoSisSo"}
;; 0
%mamako:0, siblings:0, brother:0, sibling:0, miki_mo_noko:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%mamako:0, siblings:1, sister:0, sibling:0, miki_mo_noko:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 2
%mamako:1, mama_mo_noko:0, brother:0, sibling:0, miki_mo_noko:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%mamako:2, mama_mo_nkay:0, sister:0, sibling:0, miki_mo_noko:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(Alter, D).


mame(Alter, Ego) :-  baba(A, Ego), mama_mo_noko(B, A), nkala(Alter, B).
{"FaBroWi"}
;; 0
%mame:0, baba:0, mama_mo_noko:0, brother:0, sibling:0, nkala:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


mboya(Alter, Ego) :-  husband(Alter, Ego).
                  |   female(Ego), father(A, Ego), mama_mo_nkay(B, A), husband(Alter, B).
{"FaSisHu_Hu"}
;; 0
%mboya:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%mboya:1, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mboyako_mo_mbomoto_mo_nkaye(Alter, Ego) :-  husband(A, Ego), mama_mo_nkay(Alter, A), elder(Alter, A).
{"HuSis"}
;; 0
%mboyako_mo_mbomoto_mo_nkaye:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).


mboyako_mo_mbomoto_mo_noko(Alter, Ego) :-  husband(A, Ego), mama_mo_noko(Alter, A), elder(Alter, A).
{"HuBro"}
;; 0
%mboyako_mo_mbomoto_mo_noko:0, mama_mo_noko:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).


mboyako_mo_tadi_mo_nkaye(Alter, Ego) :-  husband(A, Ego), mama_mo_nkay(Alter, A), younger(Alter, A).
{"HuSis"}
;; 0
%mboyako_mo_tadi_mo_nkaye:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).


mboyako_mo_tadi_mo_noko(Alter, Ego) :-  husband(A, Ego), mama_mo_noko(Alter, A), younger(Alter, A).
{"HuBro"}
;; 0
%mboyako_mo_tadi_mo_noko:0, mama_mo_noko:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).


miki_mo_nkay(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%miki_mo_nkay:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


miki_mo_noko(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%miki_mo_noko:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


momako(Alter, Ego) :-  father(A, Ego), sister(B, A), elder(B, A), miki_mo_noko(Alter, B).
{"FaSisSo"}
;; 0
%momako:0, sister:0, sibling:0, miki_mo_noko:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).


nboyako(Alter, Ego) :-  baba(A, Ego), mama_mo_nkay(B, A), husband(Alter, B).
{"FaSisHu"}
;; 0
%nboyako:0, baba:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


nena(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%nena:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


nkala(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%nkala:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


nkalako(Alter, Ego) :-  mama_mo_noko(A, Ego), nkala(Alter, A).
{"BroWi"}
;; 0
%nkalako:0, mama_mo_noko:0, brother:0, sibling:0, nkala:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).


nkalako_mo_mbomoto(Alter, Ego) :-  nkala(A, Ego), mama_mo_nkay(Alter, A), elder(Alter, A).
{"WiSis"}
;; 0
%nkalako_mo_mbomoto:0, nkala:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).


nkalako_mo_mbomoto_mo_noko(Alter, Ego) :-  nkala(A, Ego), mama_mo_noko(Alter, A), elder(Alter, A).
{"WiBro"}
;; 0
%nkalako_mo_mbomoto_mo_noko:0, nkala:0, mama_mo_noko:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).


nkalako_mo_tadi(Alter, Ego) :-  nkala(A, Ego), mama_mo_nkay(Alter, A), younger(Alter, A).
{"WiSis"}
;; 0
%nkalako_mo_tadi:0, nkala:0, mama_mo_nkay:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).


nkalako_mo_tadi_mo_noko(Alter, Ego) :-  nkala(A, Ego), mama_mo_noko(Alter, A), younger(Alter, A).
{"WiBro"}
;; 0
%nkalako_mo_tadi_mo_noko:0, nkala:0, mama_mo_noko:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).


nkalame(Alter, Ego) :-  mama(A, Ego), mama_mo_noko(B, A), nkala(Alter, B).
{"MoBroWi"}
;; 0
%nkalame:0, mama:0, mama_mo_noko:0, brother:0, sibling:0, nkala:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


noko_mo_bomoto(Alter, Ego) :-  mother(A, Ego), brother(Alter, A), elder(Alter, A).
{"MoBro"}
;; 0
%noko_mo_bomoto:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).


noko_mo_tadi(Alter, Ego) :-  mother(A, Ego), brother(Alter, A), younger(Alter, A).
{"MoBro"}
;; 0
%noko_mo_tadi:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).


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


square[aux]41(Alter, Ego) :-  generation[aux]41(Alter, Ego).
                          |   parents(Alter, Ego).
                          |   parents(A, Ego), square[aux]41(Alter, A).
;; 0
%square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 7
%square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(Alter, Ego).
;; 8
%square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(Alter, Ego).
;; 9
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 10
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 11
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 12
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 13
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 14
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 15
%square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 16
%square[aux]41:2, parents:0, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 17
%square[aux]41:2, parents:0, square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 18
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 19
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 20
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 21
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 22
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 23
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 24
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 25
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(Alter, B).
;; 26
%square[aux]41:2, parents:0, square[aux]41:2, parents:0, square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(Alter, B).
;; 27
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 28
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 29
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 30
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 31
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 32
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 33
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 34
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(Alter, B).
;; 35
%square[aux]41:2, parents:0, square[aux]41:2, parents:1, square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(Alter, B).
;; 36
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 37
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 38
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 39
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 40
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 41
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 42
%square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 43
%square[aux]41:2, parents:1, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 44
%square[aux]41:2, parents:1, square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).
;; 45
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 46
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 47
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 48
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 49
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 50
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 51
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 52
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(Alter, B).
;; 53
%square[aux]41:2, parents:1, square[aux]41:2, parents:0, square[aux]41:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(Alter, B).
;; 54
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 55
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 56
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 57
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 58
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 59
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:0, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 60
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:0, generation[aux]41:1, parents:1, generation[aux]41:1, parents:1, generation[aux]41:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 61
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(Alter, B).
;; 62
%square[aux]41:2, parents:1, square[aux]41:2, parents:1, square[aux]41:1, parents:1%
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


teta(Alter, Ego) :-  parents(A, Ego), parents(B, A), brother(Alter, B).
{"FaFaBro_FaMoBro_MoFaBro_MoMoBro"}
;; 0
%teta:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 1
%teta:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%teta:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%teta:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


tetako(Alter, Ego) :-  nkala(A, Ego), mama(B, A), baba(Alter, B).
                   |   nkala(A, Ego), baba(B, A), mama(Alter, B).
                   |   husband(A, Ego), parents(B, A), parents(Alter, B).
                   |   parents(A, Ego), parents(Alter, A).
                   |   children(A, Ego), children(Alter, A).
{"DaDa_DaSo_FaFa_FaMo_HuFaFa_HuFaMo_HuMoFa_HuMoMo_MoFa_MoMo_SoDa_SoSo_WiFaMo_WiMoFa"}
;; 0
%tetako:0, nkala:0, mama:0, baba:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), father(Alter, B).
;; 1
%tetako:1, nkala:0, baba:0, mama:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), mother(Alter, B).
;; 2
%tetako:2, parents:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), mother(Alter, B).
;; 3
%tetako:2, parents:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), father(Alter, B).
;; 4
%tetako:2, parents:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), mother(Alter, B).
;; 5
%tetako:2, parents:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), father(Alter, B).
;; 6
%tetako:3, parents:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 7
%tetako:3, parents:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 8
%tetako:3, parents:1, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 9
%tetako:3, parents:1, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 10
%tetako:4, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 11
%tetako:4, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 12
%tetako:4, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 13
%tetako:4, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


tetako_mo_nkaye(Alter, Ego) :-  nkala(A, Ego), mama(B, A), mama(Alter, B).
{"WiMoMo"}
;; 0
%tetako_mo_nkaye:0, nkala:0, mama:0, mama:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), mother(Alter, B).


tetako_mo_noko(Alter, Ego) :-  nkala(A, Ego), baba(B, A), baba(Alter, B).
{"WiFaFa"}
;; 0
%tetako_mo_noko:0, nkala:0, baba:0, baba:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), father(Alter, B).

