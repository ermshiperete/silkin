;;  Horn Clause Representation of Tswana Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Tswana") (author, "I. Schapera") (date, "1950-01-01") (citation, "I. Schapera, 'Kinship and Marriage Among the Tswana' in Radcliffe-Brown and Forde, AFRICAN SYSTEMS OF KINSHIP and MARRIAGE, 1950, Oxford University Press, London") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(overlaps, (mmangwane, (mme_mogolo)), (mmangwane_a_mme, (mme_mogolo)), (mmangwane_a_rre, (mme_mogolo)), (mme_mogolo, (mmangwane, mmangwane_a_mme, mmangwane_a_rre, mogatsa_rre)), (mogadikane, (mogolole, nnake)), (mogatsa_rre, (mme_mogolo)), (mogolole, (mogadikane, nnake)), (ngwana_mmangwane, (ngwana_mme_mogolo)), (ngwana_mme_mogolo, (ngwana_mmangwane)), (ngwana_mogolole, (ngwana_nnake)), (ngwana_ngwana_mmangwane, (ngwana_ngwana_mme_mogolo)), (ngwana_ngwana_mme_mogolo, (ngwana_ngwana_mmangwane)), (ngwana_nnake, (ngwana_mogolole)), (nnake, (mogadikane, mogolole)), (rrangwana_rre, (rre_mogolo)), (rrangwane, (rre_mogolo)), (rrangwane_mme, (rre_mogolo)), (rre_mogolo, (rrangwana_rre, rrangwane, rrangwane_mme)))
(umbrellas, (mmangwane, (mogatsa_rre)), (mogatsa, (mosadi, monna)), (ngwanna, (morwa, morwadi)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

agn_para_cousin[aux]50(Alter, Ego) :-  father(A, Ego), brother(B, A), child(Alter, B).
;; 0
%agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).


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


cross_cousin[aux]50(Alter, Ego) :-  parents(A, Ego), sibling(B, A), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%cross_cousin[aux]50:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%cross_cousin[aux]50:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%cross_cousin[aux]50:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%cross_cousin[aux]50:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).


generation[aux]50(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]50(B, A), children(Alter, B).
;; 0
%generation[aux]50:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D).
;; 2
%generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D).
;; 3
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 4
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 5
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 6
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 7
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 8
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 9
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 10
%generation[aux]50:1, parents:0, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 11
%generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D).
;; 12
%generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D).
;; 13
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 14
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 15
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 16
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:0, generation[aux]50:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), daughter(Alter, F).
;; 17
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), son(Alter, F).
;; 18
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(F, E), daughter(Alter, F).
;; 19
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(F, E), son(Alter, F).
;; 20
%generation[aux]50:1, parents:1, generation[aux]50:1, parents:1, generation[aux]50:0, sibling:0, children:1, children:1%
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


kgaitsadi(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(B, Alter), not(equal(A, B)).
                      |   gender(A, Ego), agn_para_cousin[aux]50(Alter, Ego), gender(B, Alter), not(equal(A, B)).
{"Bro_FaBroDa_FaBroSo_Sis"}
;; 0
%kgaitsadi:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(D, Alter), not(equal(A, D)).
;; 1
%kgaitsadi:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Alter), not(equal(A, F)).
;; 2
%kgaitsadi:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(D, Alter), not(equal(A, D)).
;; 3
%kgaitsadi:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(F, Alter), not(equal(A, F)).


malome(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                   |   mother(A, Ego), agn_para_cousin[aux]50(Alter, A), male(Alter).
{"MoBro_MoFaBroSo"}
;; 0
%malome:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%malome:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).


malome_a_mme(Alter, Ego) :-  mother(A, Ego), mother(B, A), brother(Alter, B).
{"MoMoBro"}
;; 0
%malome_a_mme:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


malome_a_rre(Alter, Ego) :-  father(A, Ego), mother(B, A), brother(Alter, B).
{"FaMoBro"}
;; 0
%malome_a_rre:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


mmangwane(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), younger(Alter, A).
                      |   mother(A, Ego), agn_para_cousin[aux]50(Alter, A), female(Alter), younger(Alter, A).
                      |   parents(A, Ego), mother(B, A), sister(C, B), children(Alter, C), younger(Alter, A).
                      |   father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)), younger(Alter, B).
{"FaMoSisDa_FaMoSisSo_MoFaBroDa_MoMoSisDa_MoMoSisSo_MoSis_Stmo"}
;; 0
%mmangwane:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 1
%mmangwane:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), younger(Alter, A).
;; 2
%mmangwane:2, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, A).
;; 3
%mmangwane:2, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), younger(Alter, A).
;; 4
%mmangwane:2, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), younger(Alter, A).
;; 5
%mmangwane:2, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), younger(Alter, A).
;; 6
%mmangwane:3%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)), younger(Alter, B).


mmangwane_a_mme(Alter, Ego) :-  mother(A, Ego), mother(B, A), sister(Alter, B), younger(Alter, B).
{"MoMoSis"}
;; 0
%mmangwane_a_mme:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), younger(Alter, B).


mmangwane_a_rre(Alter, Ego) :-  father(A, Ego), mother(B, A), sister(Alter, B), younger(Alter, B).
{"FaMoSis"}
;; 0
%mmangwane_a_rre:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), younger(Alter, B).


mmatsale(Alter, Ego) :-  husband(A, Ego), parents(Alter, A).
                     |   husband(A, Ego), siblings(Alter, A).
{"HuBro_HuFa_HuMo_HuSis"}
;; 0
%mmatsale:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%mmatsale:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 2
%mmatsale:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%mmatsale:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


mme(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%mme:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


mme_mogolo(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                       |   mother(A, Ego), sister(Alter, A), elder(Alter, A).
                       |   parents(A, Ego), mother(B, A), sister(Alter, B), elder(Alter, B).
                       |   mother(A, Ego), agn_para_cousin[aux]50(Alter, A), female(Alter), elder(Alter, A).
                       |   parents(A, Ego), mother(B, A), sister(C, B), children(Alter, C), elder(Alter, A).
                       |   father(A, Ego), mother(B, Ego), wife(Alter, A), elder(Alter, B), not(equal(Alter, B)).
{"FaMo_FaMoSis_FaMoSisDa_FaMoSisSo_MoFaBroDa_MoMo_MoMoSis_MoMoSisDa_MoMoSisSo_MoSis_Stmo"}
;; 0
%mme_mogolo:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%mme_mogolo:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%mme_mogolo:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 3
%mme_mogolo:2, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), elder(Alter, B).
;; 4
%mme_mogolo:2, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), elder(Alter, B).
;; 5
%mme_mogolo:3, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter), elder(Alter, A).
;; 6
%mme_mogolo:4, parents:0, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 7
%mme_mogolo:4, parents:0, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), elder(Alter, A).
;; 8
%mme_mogolo:4, parents:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E), elder(Alter, A).
;; 9
%mme_mogolo:4, parents:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E), elder(Alter, A).
;; 10
%mme_mogolo:5%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), elder(Alter, B), not(equal(Alter, B)).


mogadikane(Alter, Ego) :-  husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).
{"HuWi"}
;; 0
%mogadikane:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
 husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).


mogatsa(Alter, Ego) :-  spice(Alter, Ego).
{"Hu_Wi"}
;; 0
%mogatsa:0, spice:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).
;; 1
%mogatsa:0, spice:1%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


mogatsa_mme(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%mogatsa_mme:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


mogatsa_rre(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%mogatsa_rre:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


mogolole(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(A, Alter), elder(Alter, Ego).
                     |   gender(A, Ego), agn_para_cousin[aux]50(Alter, Ego), gender(A, Alter), elder(Alter, Ego).
                     |  [ext],  elder(Alter, Ego), mogadikane(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_HuWi_Sis"}
;; 0
%mogolole:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).
;; 1
%mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(A, Alter), elder(Alter, Ego).
;; 2
%mogolole:2, mogadikane:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
[ext],  elder(Alter, Ego), husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).
;; 3
%mogolole:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).
;; 4
%mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(A, Alter), elder(Alter, Ego).


mogwagadi(Alter, Ego) :-  wife(A, Ego), parents(Alter, A).
                      |   wife(A, Ego), siblings(Alter, A).
{"WiBro_WiFa_WiMo_WiSis"}
;; 0
%mogwagadi:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%mogwagadi:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%mogwagadi:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%mogwagadi:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


mogwe(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%mogwe:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


monna(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%monna:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


morwa(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%morwa:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


morwadi(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%morwadi:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


mosadi(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%mosadi:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


motlogolo(Alter, Ego) :-  male(Ego), sister(A, Ego), children(Alter, A).
                      |   male(Ego), agn_para_cousin[aux]50(A, Ego), female(A), children(Alter, A).
{"FaBroDaDa_FaBroDaSo_SisDa_SisSo"}
;; 0
%motlogolo:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%motlogolo:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%motlogolo:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 3
%motlogolo:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).


ngwana_kgaitsadi(Alter, Ego) :-  female(Ego), brother(A, Ego), children(Alter, A).
                             |   female(Ego), agn_para_cousin[aux]50(A, Ego), male(A), children(Alter, A).
{"BroDa_BroSo_FaBroSoDa_FaBroSoSo"}
;; 0
%ngwana_kgaitsadi:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%ngwana_kgaitsadi:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%ngwana_kgaitsadi:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 3
%ngwana_kgaitsadi:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).


ngwana_mmangwane(Alter, Ego) :-  mother(A, Ego), sister(B, A), younger(B, A), children(Alter, B).
{"MoSisDa_MoSisSo"}
;; 0
%ngwana_mmangwane:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(Alter, D).
;; 1
%ngwana_mmangwane:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(Alter, D).


ngwana_mme_mogolo(Alter, Ego) :-  mother(A, Ego), sister(B, A), elder(B, A), children(Alter, B).
{"MoSisDa_MoSisSo"}
;; 0
%ngwana_mme_mogolo:0, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 1
%ngwana_mme_mogolo:0, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).


ngwana_mogolole(Alter, Ego) :-  gender(A, Ego), sibling(B, Ego), gender(A, B), elder(B, Ego), children(Alter, B).
                            |   gender(A, Ego), agn_para_cousin[aux]50(B, Ego), gender(A, B), elder(B, Ego), children(Alter, B).
                            |   husband(A, Ego), wife(B, A), elder(B, Ego), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
                            |   husband(A, Ego), wife(B, A), elder(B, Ego), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
{"BroDa_BroSo_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_SisDa_SisSo_Stda_Stso"}
;; 0
%ngwana_mogolole:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), elder(D, Ego), son(Alter, D).
;; 1
%ngwana_mogolole:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), elder(D, Ego), daughter(Alter, D).
;; 2
%ngwana_mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), elder(F, Ego), son(Alter, F).
;; 3
%ngwana_mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), elder(F, Ego), daughter(Alter, F).
;; 4
%ngwana_mogolole:2%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 husband(A, Ego), wife(B, A), elder(B, Ego), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 5
%ngwana_mogolole:3%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 husband(A, Ego), wife(B, A), elder(B, Ego), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 6
%ngwana_mogolole:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), elder(D, Ego), son(Alter, D).
;; 7
%ngwana_mogolole:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), elder(D, Ego), daughter(Alter, D).
;; 8
%ngwana_mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), elder(F, Ego), son(Alter, F).
;; 9
%ngwana_mogolole:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), elder(F, Ego), daughter(Alter, F).


ngwana_ngwana(Alter, Ego) :-  children(A, Ego), children(Alter, A).
{"DaDa_DaSo_SoDa_SoSo"}
;; 0
%ngwana_ngwana:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%ngwana_ngwana:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%ngwana_ngwana:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%ngwana_ngwana:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


ngwana_ngwana_mmangwane(Alter, Ego) :-  mother(A, Ego), sister(B, A), younger(B, A), children(C, B), children(Alter, C).
{"MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo"}
;; 0
%ngwana_ngwana_mmangwane:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(E, D), son(Alter, E).
;; 1
%ngwana_ngwana_mmangwane:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(E, D), daughter(Alter, E).
;; 2
%ngwana_ngwana_mmangwane:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(E, D), son(Alter, E).
;; 3
%ngwana_ngwana_mmangwane:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(E, D), daughter(Alter, E).


ngwana_ngwana_mme_mogolo(Alter, Ego) :-  mother(A, Ego), sister(B, A), elder(B, A), children(C, B), children(Alter, C).
{"MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo"}
;; 0
%ngwana_ngwana_mme_mogolo:0, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(E, D), son(Alter, E).
;; 1
%ngwana_ngwana_mme_mogolo:0, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(E, D), daughter(Alter, E).
;; 2
%ngwana_ngwana_mme_mogolo:0, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(E, D), son(Alter, E).
;; 3
%ngwana_ngwana_mme_mogolo:0, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(E, D), daughter(Alter, E).


ngwana_nnake(Alter, Ego) :-  gender(A, Ego), sibling(B, Ego), gender(A, B), younger(B, Ego), children(Alter, B).
                         |   gender(A, Ego), agn_para_cousin[aux]50(B, Ego), gender(A, B), younger(B, Ego), children(Alter, B).
                         |   husband(A, Ego), wife(B, A), younger(B, Ego), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
                         |   husband(A, Ego), wife(B, A), younger(B, Ego), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
{"BroDa_BroSo_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_SisDa_SisSo_Stda_Stso"}
;; 0
%ngwana_nnake:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), younger(D, Ego), son(Alter, D).
;; 1
%ngwana_nnake:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), younger(D, Ego), daughter(Alter, D).
;; 2
%ngwana_nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), younger(F, Ego), son(Alter, F).
;; 3
%ngwana_nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), younger(F, Ego), daughter(Alter, F).
;; 4
%ngwana_nnake:2%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 husband(A, Ego), wife(B, A), younger(B, Ego), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).
;; 5
%ngwana_nnake:3%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 husband(A, Ego), wife(B, A), younger(B, Ego), not(equal(Ego, B)), son(Alter, B), son(Alter, A).
;; 6
%ngwana_nnake:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), younger(D, Ego), son(Alter, D).
;; 7
%ngwana_nnake:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(D, B), child(D, C), not(equal(D, Ego)), gender(A, D), younger(D, Ego), daughter(Alter, D).
;; 8
%ngwana_nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), younger(F, Ego), son(Alter, F).
;; 9
%ngwana_nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), gender(A, F), younger(F, Ego), daughter(Alter, F).


ngwana_ntsala(Alter, Ego) :-  cross_cousin[aux]50(A, Ego), children(Alter, A).
{"FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo"}
;; 0
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), gender(F, A), gender(G, D), not(equal(F, G)), son(Alter, E).
;; 1
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), gender(F, A), gender(G, D), not(equal(F, G)), daughter(Alter, E).
;; 2
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), gender(F, A), gender(G, D), not(equal(F, G)), son(Alter, E).
;; 3
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), gender(F, A), gender(G, D), not(equal(F, G)), daughter(Alter, E).
;; 4
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), gender(F, A), gender(G, D), not(equal(F, G)), son(Alter, E).
;; 5
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), gender(F, A), gender(G, D), not(equal(F, G)), daughter(Alter, E).
;; 6
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), gender(F, A), gender(G, D), not(equal(F, G)), son(Alter, E).
;; 7
%ngwana_ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), gender(F, A), gender(G, D), not(equal(F, G)), daughter(Alter, E).


ngwanna(Alter, Ego) :-  children(Alter, Ego).
{"Da_So"}
;; 0
%ngwanna:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%ngwanna:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


ngwanna_mme(Alter, Ego) :-  father(A, Ego), mother(B, Ego), mother(B, Alter), wife(B, C), children(Alter, C), not(equal(A, C)).
{"Hbro_Hsis"}
;; 0
%ngwanna_mme:0, children:0%
 Lvl=0,  PC=4, S=1, Star=0,  {Hbro}  
 father(A, Ego), mother(B, Ego), mother(B, Alter), wife(B, C), son(Alter, C), not(equal(A, C)).
;; 1
%ngwanna_mme:0, children:1%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 father(A, Ego), mother(B, Ego), mother(B, Alter), wife(B, C), daughter(Alter, C), not(equal(A, C)).


ngwanna_rre(Alter, Ego) :-  father(A, Ego), mother(B, Ego), father(A, Alter), wife(C, A), children(Alter, C), not(equal(B, C)).
{"Hbro_Hsis"}
;; 0
%ngwanna_rre:0, children:0%
 Lvl=0,  PC=4, S=1, Star=0,  {Hbro}  
 father(A, Ego), mother(B, Ego), father(A, Alter), wife(C, A), son(Alter, C), not(equal(B, C)).
;; 1
%ngwanna_rre:0, children:1%
 Lvl=0,  PC=4, S=1, Star=0,  {Hsis}  
 father(A, Ego), mother(B, Ego), father(A, Alter), wife(C, A), daughter(Alter, C), not(equal(B, C)).


ngwetsi(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
{"SoWi"}
;; 0
%ngwetsi:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).


nnake(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(A, Alter), younger(Alter, Ego).
                  |   gender(A, Ego), agn_para_cousin[aux]50(Alter, Ego), gender(A, Alter), younger(Alter, Ego).
                  |  [ext],  younger(Alter, Ego), mogadikane(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_HuWi_Sis"}
;; 0
%nnake:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), younger(Alter, Ego).
;; 1
%nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(A, Alter), younger(Alter, Ego).
;; 2
%nnake:2, mogadikane:0%
 Lvl=0,  PC=0, S=2, Star=0,  {HuWi}  
[ext],  younger(Alter, Ego), husband(A, Ego), wife(Alter, A), not(equal(Ego, Alter)).
;; 3
%nnake:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), younger(Alter, Ego).
;; 4
%nnake:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), gender(A, Alter), younger(Alter, Ego).


ntsala(Alter, Ego) :-  cross_cousin[aux]50(Alter, Ego).
{"FaSisDa_FaSisSo_MoBroDa_MoBroSo"}
;; 0
%ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%ntsala:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%ntsala:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).


ntsala_mme(Alter, Ego) :-  mother(A, Ego), cross_cousin[aux]50(Alter, A).
{"MoFaSisDa_MoFaSisSo_MoMoBroDa_MoMoBroSo"}
;; 0
%ntsala_mme:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 1
%ntsala_mme:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 2
%ntsala_mme:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 3
%ntsala_mme:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).


ntsala_rre(Alter, Ego) :-  father(A, Ego), cross_cousin[aux]50(Alter, A).
{"FaFaSisDa_FaFaSisSo_FaMoBroDa_FaMoBroSo"}
;; 0
%ntsala_rre:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 1
%ntsala_rre:0, cross_cousin[aux]50:0, parents:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 2
%ntsala_rre:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), son(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 3
%ntsala_rre:0, cross_cousin[aux]50:0, parents:1, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), daughter(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).


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


rrakgadi(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                     |   father(A, Ego), agn_para_cousin[aux]50(Alter, A), female(Alter).
{"FaFaBroDa_FaSis"}
;; 0
%rrakgadi:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%rrakgadi:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).


rrakgadi_a_mme(Alter, Ego) :-  mother(A, Ego), father(B, A), sister(Alter, B).
{"MoFaSis"}
;; 0
%rrakgadi_a_mme:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


rrakgadi_a_rre(Alter, Ego) :-  father(A, Ego), father(B, A), sister(Alter, B).
{"FaFaSis"}
;; 0
%rrakgadi_a_rre:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


rrangwana_rre(Alter, Ego) :-  father(A, Ego), father(B, A), brother(Alter, B), younger(Alter, B).
{"FaFaBro"}
;; 0
%rrangwana_rre:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, B).


rrangwane(Alter, Ego) :-  father(A, Ego), brother(Alter, A), younger(Alter, A).
                      |   father(A, Ego), agn_para_cousin[aux]50(Alter, A), male(Alter), younger(Alter, A).
{"FaBro_FaFaBroSo"}
;; 0
%rrangwane:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).
;; 1
%rrangwane:1, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), younger(Alter, A).


rrangwane_mme(Alter, Ego) :-  mother(A, Ego), father(B, A), brother(Alter, B), younger(Alter, B).
{"MoFaBro"}
;; 0
%rrangwane_mme:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), younger(Alter, B).


rre(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%rre:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


rre_mogolo(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                       |   father(A, Ego), brother(Alter, A), elder(Alter, A).
                       |   father(A, Ego), agn_para_cousin[aux]50(Alter, A), male(Alter), elder(Alter, A).
                       |   parents(A, Ego), father(B, A), brother(Alter, B), elder(Alter, B).
{"FaBro_FaFa_FaFaBro_FaFaBroSo_MoFa_MoFaBro"}
;; 0
%rre_mogolo:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%rre_mogolo:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%rre_mogolo:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 3
%rre_mogolo:2, agn_para_cousin[aux]50:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter), elder(Alter, A).
;; 4
%rre_mogolo:3, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, B).
;; 5
%rre_mogolo:3, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter), elder(Alter, B).


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

