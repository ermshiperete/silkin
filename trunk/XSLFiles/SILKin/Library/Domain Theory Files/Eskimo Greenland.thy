;;  Horn Clause Representation of Eskimo Greenland Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Eskimo Greenland") (author, "Samuel Kleinschmidt") (date, "1862-08-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (alekara, (najuga)), (angajuga, (nakara)), (aniga, (arkaluara)), (arkaluara, (aniga)), (najuga, (alekara)), (nakara, (angajuga)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ajaga(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
{"MoSis"}
;; 0
%ajaga:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


akaga(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
{"FaBro"}
;; 0
%akaga:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


alekara(Alter, Ego) :-  male(Ego), sister(Alter, Ego), elder(Alter, Ego).
{"Sis"}
;; 0
%alekara:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).


anaga(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
{"FaMo_MoMo"}
;; 0
%anaga:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%anaga:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).


ananaga(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%ananaga:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


angaga(Alter, Ego) :-  female(Ego), brother(A, Ego), children(Alter, A).
                   |   mother(A, Ego), brother(Alter, A).
{"BroDa_BroSo_MoBro"}
;; 0
%angaga:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%angaga:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%angaga:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


angajosnora(Alter, Ego) :-  husband(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi"}
;; 0
%angajosnora:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


angajuga(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(A, Alter), elder(Alter, Ego).
{"Bro_Sis"}
;; 0
%angajuga:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).
;; 1
%angajuga:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).


angutigssara(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%angutigssara:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


aniga(Alter, Ego) :-  female(Ego), brother(Alter, Ego), elder(Alter, Ego).
{"Bro"}
;; 0
%aniga:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).


arkaluara(Alter, Ego) :-  female(Ego), brother(Alter, Ego), younger(Alter, Ego).
{"Bro"}
;; 0
%arkaluara:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).


arnagssara(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%arnagssara:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


ataga(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
{"FaFa_MoFa"}
;; 0
%ataga:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ataga:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).


atataga(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%atataga:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


atsaga(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%atsaga:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


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


ernera(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%ernera:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


ernigssara(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%ernigssara:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


ernutaekiutiga(Alter, Ego) :-  children(A, Ego), children(B, A), children(Alter, B).
{"DaDaDa_DaDaSo_DaSoDa_DaSoSo_SoDaDa_SoDaSo_SoSoDa_SoSoSo"}
;; 0
%ernutaekiutiga:0, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 1
%ernutaekiutiga:0, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 2
%ernutaekiutiga:0, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 3
%ernutaekiutiga:0, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 4
%ernutaekiutiga:0, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 5
%ernutaekiutiga:0, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%ernutaekiutiga:0, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%ernutaekiutiga:0, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).


ernutara(Alter, Ego) :-  children(A, Ego), children(Alter, A).
{"DaDa_DaSo_SoDa_SoSo"}
;; 0
%ernutara:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%ernutara:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%ernutara:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%ernutara:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).


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


igdlora(Alter, Ego) :-  parents(A, Ego), siblings(B, A), children(Alter, B).
{"FaBroDa_FaBroSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoSisDa_MoSisSo"}
;; 0
%igdlora:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%igdlora:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%igdlora:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%igdlora:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%igdlora:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%igdlora:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%igdlora:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 7
%igdlora:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


kangiara(Alter, Ego) :-  male(Ego), brother(A, Ego), children(Alter, A).
{"BroDa_BroSo"}
;; 0
%kangiara:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%kangiara:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).


najuga(Alter, Ego) :-  male(Ego), sister(Alter, Ego), younger(Alter, Ego).
{"Sis"}
;; 0
%najuga:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).


nakara(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(A, Alter), younger(Alter, Ego).
{"Bro_Sis"}
;; 0
%nakara:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), younger(Alter, Ego).
;; 1
%nakara:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), younger(Alter, Ego).


natangutigssara(Alter, Ego) :-  step_sister(Alter, Ego).
                            |   step_brother(Alter, Ego).
{"Stbro_Stsis"}
;; 0
%natangutigssara:0, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%natangutigssara:0, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 2
%natangutigssara:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 3
%natangutigssara:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


ningauga(Alter, Ego) :-  sister(A, Ego), husband(Alter, A).
                     |   daughter(A, Ego), husband(Alter, A).
                     |   husband(A, Ego), sister(B, A), husband(Alter, B).
{"DaHu_HuSisHu_SisHu"}
;; 0
%ningauga:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 1
%ningauga:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 2
%ningauga:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


nuaraluara(Alter, Ego) :-  female(Ego), sister(A, Ego), children(Alter, A).
{"SisDa_SisSo"}
;; 0
%nuaraluara:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%nuaraluara:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


nuliara(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%nuliara:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


panigssara(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%panigssara:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


panniga(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%panniga:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


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


sakiahsiara(Alter, Ego) :-  spice(A, Ego), gender(B, A), sibling(Alter, A), gender(B, Alter).
{"HuBro_WiSis"}
;; 0
%sakiahsiara:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).
;; 1
%sakiahsiara:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(B, Alter).


sakiatsiara(Alter, Ego) :-  spice(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
{"HuSis_WiBro"}
;; 0
%sakiatsiara:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 1
%sakiatsiara:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).


sakiga(Alter, Ego) :-  spice(A, Ego), parents(Alter, A).
{"HuFa_HuMo_WiFa_WiMo"}
;; 0
%sakiga:0, spice:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%sakiga:0, spice:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 2
%sakiga:0, spice:1, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 3
%sakiga:0, spice:1, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


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


ujoruga(Alter, Ego) :-  male(Ego), sister(A, Ego), children(Alter, A).
{"SisDa_SisSo"}
;; 0
%ujoruga:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%ujoruga:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


ukuara(Alter, Ego) :-  brother(A, Ego), wife(Alter, A).
                   |   son(A, Ego), wife(Alter, A).
                   |   wife(A, Ego), brother(B, A), wife(Alter, B).
{"BroWi_SoWi_WiBroWi"}
;; 0
%ukuara:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%ukuara:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 2
%ukuara:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


uviga(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%uviga:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).

