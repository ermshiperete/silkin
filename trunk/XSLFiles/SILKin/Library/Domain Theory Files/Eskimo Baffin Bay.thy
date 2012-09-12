;;  Horn Clause Representation of Eskimo Baffin Bay Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Eskimo Baffin Bay") (author, "Samuel Kleinschmidt") (date, "1862-08-01") (citation, "Lewis H. Morgan SYSTEMS OF CONSANGUINITY AND AFFINITY OF THE HUMAN FAMILY, 1871 (reprint 1997), University of Nebraska Press, Lincoln") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, true) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (angayua, (nuka, nukaha)), (anninga, (nuka)), (nuka, (angayua, anninga)), (nukaha, (angayua)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ahnana(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%ahnana:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


ahtata(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%ahtata:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


aiyugga(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
                    |   mother(A, Ego), brother(B, A), wife(Alter, B).
{"MoBroWi_MoSis"}
;; 0
%aiyugga:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%aiyugga:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


angayua(Alter, Ego) :-  gender(A, Ego), sibling(Alter, Ego), gender(A, Alter), elder(Alter, Ego).
{"Bro_Sis"}
;; 0
%angayua:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).
;; 1
%angayua:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), gender(A, Ego), mother(B, Ego), father(C, Ego), child(Alter, B), child(Alter, C), not(equal(Alter, Ego)), gender(A, Alter), elder(Alter, Ego).


angayukcha(Alter, Ego) :-  female(Ego), step_sister(Alter, Ego).
                       |   male(Ego), step_brother(Alter, Ego).
{"Stbro_Stsis"}
;; 0
%angayukcha:0, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%angayukcha:0, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).
;; 2
%angayukcha:1, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 3
%angayukcha:1, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


angoecha(Alter, Ego) :-  step_father(Alter, Ego).
{"Stfa"}
;; 0
%angoecha:0, step_father:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 father(A, Ego), mother(B, Ego), husband(Alter, B), not(equal(Alter, A)).


angugga(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
{"MoBro"}
;; 0
%angugga:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


annecha(Alter, Ego) :-  female(Ego), step_brother(Alter, Ego).
{"Stbro"}
;; 0
%annecha:0, step_brother:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), son(Alter, D), son(Alter, C).
;; 1
%annecha:0, step_brother:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 female(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), son(Alter, D), son(Alter, C).


anninga(Alter, Ego) :-  female(Ego), brother(Alter, Ego), elder(Alter, Ego).
{"Bro"}
;; 0
%anninga:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).


atchunga(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
{"FaSis"}
;; 0
%atchunga:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


augaougwa(Alter, Ego) :-  male(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"SisDaHu"}
;; 0
%augaougwa:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


aunekcha(Alter, Ego) :-  step_mother(Alter, Ego).
{"Stmo"}
;; 0
%aunekcha:0, step_mother:0%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 father(A, Ego), mother(B, Ego), wife(Alter, A), not(equal(Alter, B)).


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


engota(Alter, Ego) :-  grandchild[aux]14(Alter, Ego).
                   |  [ext],  siblings(A, Ego), grandchild[aux]14(Alter, A).
                   |  [ext],  parents(A, Ego), siblings(B, A), children(C, B), grandchild[aux]14(Alter, C).
{"BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaDaSo_BroDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSo_BroDaSoDa_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSo_BroDaSoSoDa_BroDaSoSoSo_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSo_BroSoSoDa_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSo_BroSoSoSoDa_BroSoSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaSo_DaDaSo_DaDaSoDa_DaDaSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaSo_DaSoSo_DaSoSoDa_DaSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaDaDa_FaBroDaDaDaDaSo_FaBroDaDaDaSo_FaBroDaDaDaSoDa_FaBroDaDaDaSoSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoDaDa_FaBroDaDaSoDaSo_FaBroDaDaSoSo_FaBroDaDaSoSoDa_FaBroDaDaSoSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaDaDa_FaBroDaSoDaDaSo_FaBroDaSoDaSo_FaBroDaSoDaSoDa_FaBroDaSoDaSoSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoDaDa_FaBroDaSoSoDaSo_FaBroDaSoSoSo_FaBroDaSoSoSoDa_FaBroDaSoSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaDaDa_FaBroSoDaDaDaSo_FaBroSoDaDaSo_FaBroSoDaDaSoDa_FaBroSoDaDaSoSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoDaDa_FaBroSoDaSoDaSo_FaBroSoDaSoSo_FaBroSoDaSoSoDa_FaBroSoDaSoSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaDaDa_FaBroSoSoDaDaSo_FaBroSoSoDaSo_FaBroSoSoDaSoDa_FaBroSoSoDaSoSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoDaDa_FaBroSoSoSoDaSo_FaBroSoSoSoSo_FaBroSoSoSoSoDa_FaBroSoSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaDaDa_FaSisDaDaDaDaSo_FaSisDaDaDaSo_FaSisDaDaDaSoDa_FaSisDaDaDaSoSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoDaDa_FaSisDaDaSoDaSo_FaSisDaDaSoSo_FaSisDaDaSoSoDa_FaSisDaDaSoSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaDaDa_FaSisDaSoDaDaSo_FaSisDaSoDaSo_FaSisDaSoDaSoDa_FaSisDaSoDaSoSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoDaDa_FaSisDaSoSoDaSo_FaSisDaSoSoSo_FaSisDaSoSoSoDa_FaSisDaSoSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaDaDa_FaSisSoDaDaDaSo_FaSisSoDaDaSo_FaSisSoDaDaSoDa_FaSisSoDaDaSoSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoDaDa_FaSisSoDaSoDaSo_FaSisSoDaSoSo_FaSisSoDaSoSoDa_FaSisSoDaSoSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaDaDa_FaSisSoSoDaDaSo_FaSisSoSoDaSo_FaSisSoSoDaSoDa_FaSisSoSoDaSoSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoDaDa_FaSisSoSoSoDaSo_FaSisSoSoSoSo_FaSisSoSoSoSoDa_FaSisSoSoSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaDaDa_MoBroDaDaDaDaSo_MoBroDaDaDaSo_MoBroDaDaDaSoDa_MoBroDaDaDaSoSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoDaDa_MoBroDaDaSoDaSo_MoBroDaDaSoSo_MoBroDaDaSoSoDa_MoBroDaDaSoSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaDaDa_MoBroDaSoDaDaSo_MoBroDaSoDaSo_MoBroDaSoDaSoDa_MoBroDaSoDaSoSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoDaDa_MoBroDaSoSoDaSo_MoBroDaSoSoSo_MoBroDaSoSoSoDa_MoBroDaSoSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaDaDa_MoBroSoDaDaDaSo_MoBroSoDaDaSo_MoBroSoDaDaSoDa_MoBroSoDaDaSoSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoDaDa_MoBroSoDaSoDaSo_MoBroSoDaSoSo_MoBroSoDaSoSoDa_MoBroSoDaSoSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaDaDa_MoBroSoSoDaDaSo_MoBroSoSoDaSo_MoBroSoSoDaSoDa_MoBroSoSoDaSoSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoDaDa_MoBroSoSoSoDaSo_MoBroSoSoSoSo_MoBroSoSoSoSoDa_MoBroSoSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaDaDa_MoSisDaDaDaDaSo_MoSisDaDaDaSo_MoSisDaDaDaSoDa_MoSisDaDaDaSoSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoDaDa_MoSisDaDaSoDaSo_MoSisDaDaSoSo_MoSisDaDaSoSoDa_MoSisDaDaSoSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaDaDa_MoSisDaSoDaDaSo_MoSisDaSoDaSo_MoSisDaSoDaSoDa_MoSisDaSoDaSoSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoDaDa_MoSisDaSoSoDaSo_MoSisDaSoSoSo_MoSisDaSoSoSoDa_MoSisDaSoSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaDaDa_MoSisSoDaDaDaSo_MoSisSoDaDaSo_MoSisSoDaDaSoDa_MoSisSoDaDaSoSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoDaDa_MoSisSoDaSoDaSo_MoSisSoDaSoSo_MoSisSoDaSoSoDa_MoSisSoDaSoSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaDaDa_MoSisSoSoDaDaSo_MoSisSoSoDaSo_MoSisSoSoDaSoDa_MoSisSoSoDaSoSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoDaDa_MoSisSoSoSoDaSo_MoSisSoSoSoSo_MoSisSoSoSoSoDa_MoSisSoSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSo_SisDaSoDa_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSo_SisSoSoDa_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSo_SisSoSoSoDa_SisSoSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaSo_SoDaSo_SoDaSoDa_SoDaSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaSo_SoSoSo_SoSoSoDa_SoSoSoSo"}
;; 0
%engota:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%engota:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%engota:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%engota:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%engota:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  son(A, Ego), son(B, A), son(Alter, B).
;; 5
%engota:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  son(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%engota:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  son(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%engota:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 8
%engota:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%engota:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%engota:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%engota:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%engota:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext],  son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 13
%engota:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext],  son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 14
%engota:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 15
%engota:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 16
%engota:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 17
%engota:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 18
%engota:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 19
%engota:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 20
%engota:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 21
%engota:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 22
%engota:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 23
%engota:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 24
%engota:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 25
%engota:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 26
%engota:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 27
%engota:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 28
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 29
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 30
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 31
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 32
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 33
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 34
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 35
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 36
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 37
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 38
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 39
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 40
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(F, E), son(Alter, F).
;; 41
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 42
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 43
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 44
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 45
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 46
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 47
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 48
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(F, E), son(Alter, F).
;; 49
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 50
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 51
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 52
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 53
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 54
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 55
%engota:1, siblings:0, brother:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 56
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 57
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 58
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 59
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 60
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 61
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 62
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 63
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 64
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 65
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 66
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 67
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 68
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(F, E), son(Alter, F).
;; 69
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 70
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 71
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 72
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 73
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 74
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 75
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 76
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(F, E), son(Alter, F).
;; 77
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(F, E), daughter(Alter, F).
;; 78
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(F, E), son(Alter, F).
;; 79
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(F, E), daughter(Alter, F).
;; 80
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), son(Alter, F).
;; 81
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(F, E), daughter(Alter, F).
;; 82
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(F, E), son(Alter, F).
;; 83
%engota:1, siblings:1, sister:0, sibling:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext], [ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 84
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 85
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 86
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 87
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 88
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 89
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 90
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 91
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 93
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 94
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 95
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 97
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 98
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 99
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 100
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 101
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 102
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 103
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 104
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 105
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 106
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 107
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 108
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 109
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 110
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 111
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroSoDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 112
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 113
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 114
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 115
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 116
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 117
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 118
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 119
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 120
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 121
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 122
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 123
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 124
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 125
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 126
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 127
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 128
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 129
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 130
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 131
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 132
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 133
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 134
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 135
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 136
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 137
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 138
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 139
%engota:2, parents:0, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoBroDaDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 140
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 141
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 142
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 143
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 144
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 145
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 146
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 147
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 148
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 149
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 150
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 151
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 152
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 153
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 154
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 155
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 156
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 157
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 158
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 159
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 160
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 161
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 162
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 163
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 164
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 165
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 166
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 167
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisSoDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 168
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 169
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 170
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 171
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 172
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 173
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 174
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 175
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 176
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 177
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 178
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 179
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 180
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 181
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 182
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 183
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 184
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 185
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 186
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 187
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaSoDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 188
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 189
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 190
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 191
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaSoDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 192
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 193
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 194
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 195
%engota:2, parents:0, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {MoSisDaDaDaDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 196
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 197
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 198
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 199
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 200
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 201
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 202
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 203
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 204
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 205
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 206
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 207
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 208
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 209
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 210
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 211
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 212
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 213
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 214
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 215
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 216
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 217
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 218
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 219
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 220
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 221
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 222
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 223
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroSoDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 224
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 225
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 226
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 227
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 228
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 229
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 230
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 231
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 232
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 233
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 234
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 235
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 236
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 237
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 238
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 239
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 240
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 241
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 242
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 243
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 244
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 245
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 246
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 247
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 248
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 249
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 250
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 251
%engota:2, parents:1, siblings:0, brother:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaBroDaDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 252
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 253
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 254
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 255
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 256
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 257
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 258
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 259
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 260
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 261
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 262
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 263
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 264
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 265
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 266
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 267
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 268
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 269
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 270
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 271
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 272
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 273
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 274
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 275
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 276
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 277
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 278
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 279
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:0, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisSoDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 280
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 281
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 282
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 283
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 284
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 285
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 286
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 287
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 288
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 289
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 290
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 291
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 292
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), son(Alter, H).
;; 293
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 294
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 295
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 296
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 297
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 298
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 299
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaSoDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 300
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), son(Alter, H).
;; 301
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(H, G), daughter(Alter, H).
;; 302
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), son(Alter, H).
;; 303
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(H, G), daughter(Alter, H).
;; 304
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), son(Alter, H).
;; 305
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(H, G), daughter(Alter, H).
;; 306
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), son(Alter, H).
;; 307
%engota:2, parents:1, siblings:1, sister:0, sibling:0, children:1, grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=10, S=0, Star=0,  {FaSisDaDaDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(H, G), daughter(Alter, H).


enningah(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%enningah:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


etuah(Alter, Ego) :-  grandparent[aux]14(Alter, Ego), male(Alter).
                  |  [ext],  parents(A, Ego), grandparent[aux]14(Alter, A), male(Alter).
                  |  [ext],  grandparents[aux]14(A, Ego), grandparent[aux]14(Alter, A), male(Alter).
                  |  [ext],  grandparents[aux]14(A, Ego), brother(Alter, A).
                  |  [ext],  spice(A, Ego), grandparent[aux]14(Alter, A), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaFa_FaFaMoFa_FaMoBro_FaMoFa_FaMoFaFa_FaMoMoFa_HuFaFa_HuMoFa_MoFa_MoFaBro_MoFaFa_MoFaFaFa_MoFaMoFa_MoMoBro_MoMoFa_MoMoFaFa_MoMoMoFa_WiFaFa_WiMoFa"}
;; 0
%etuah:0, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%etuah:0, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%etuah:1, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 3
%etuah:1, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 4
%etuah:1, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 5
%etuah:1, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 6
%etuah:2, grandparents[aux]14:0, parents:0, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 7
%etuah:2, grandparents[aux]14:0, parents:0, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 8
%etuah:2, grandparents[aux]14:0, parents:0, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 9
%etuah:2, grandparents[aux]14:0, parents:0, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 10
%etuah:2, grandparents[aux]14:0, parents:1, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 11
%etuah:2, grandparents[aux]14:0, parents:1, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 12
%etuah:2, grandparents[aux]14:0, parents:1, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 13
%etuah:2, grandparents[aux]14:0, parents:1, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 14
%etuah:3, grandparents[aux]14:0, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 15
%etuah:3, grandparents[aux]14:0, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 16
%etuah:3, grandparents[aux]14:0, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%etuah:3, grandparents[aux]14:0, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 18
%etuah:4, spice:0, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 19
%etuah:4, spice:0, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 20
%etuah:4, spice:1, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 21
%etuah:4, spice:1, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), male(Alter).


grandchild[aux]14(Alter, Ego) :-  children(A, Ego), children(Alter, A).
                              |  [ext],  children(A, Ego), children(B, A), children(Alter, B).
                              |  [ext],  children(A, Ego), children(B, A), children(C, B), children(Alter, C).
;; 0
%grandchild[aux]14:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 1
%grandchild[aux]14:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 2
%grandchild[aux]14:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 3
%grandchild[aux]14:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%grandchild[aux]14:1, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(Alter, B).
;; 5
%grandchild[aux]14:1, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(Alter, B).
;; 6
%grandchild[aux]14:1, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(Alter, B).
;; 7
%grandchild[aux]14:1, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 8
%grandchild[aux]14:1, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(Alter, B).
;; 9
%grandchild[aux]14:1, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 10
%grandchild[aux]14:1, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 11
%grandchild[aux]14:1, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 12
%grandchild[aux]14:2, children:0, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 13
%grandchild[aux]14:2, children:0, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 14
%grandchild[aux]14:2, children:0, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 15
%grandchild[aux]14:2, children:0, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 16
%grandchild[aux]14:2, children:0, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 17
%grandchild[aux]14:2, children:0, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 18
%grandchild[aux]14:2, children:0, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 19
%grandchild[aux]14:2, children:0, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 20
%grandchild[aux]14:2, children:1, children:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 21
%grandchild[aux]14:2, children:1, children:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 22
%grandchild[aux]14:2, children:1, children:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 23
%grandchild[aux]14:2, children:1, children:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 24
%grandchild[aux]14:2, children:1, children:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 25
%grandchild[aux]14:2, children:1, children:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 26
%grandchild[aux]14:2, children:1, children:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 27
%grandchild[aux]14:2, children:1, children:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).


grandparent[aux]14(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
;; 0
%grandparent[aux]14:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]14:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).


grandparents[aux]14(Alter, Ego) :-  parents(A, Ego), parents(Alter, A).
;; 0
%grandparents[aux]14:0, parents:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(Alter, A).
;; 1
%grandparents[aux]14:0, parents:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(Alter, A).
;; 2
%grandparents[aux]14:0, parents:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(Alter, A).
;; 3
%grandparents[aux]14:0, parents:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(Alter, A).


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


iega(Alter, Ego) :-  spice(A, Ego), sibling(Alter, A), gender(B, A), gender(B, Alter).
                 |   male(Ego), brother(A, Ego), wife(Alter, A).
                 |   female(Ego), sister(A, Ego), husband(Alter, A).
                 |  [ext],  parents(A, Ego), siblings(B, A), child(C, B), spouse(Alter, C), gender(D, Ego), gender(E, Alter), not(equal(D, E)).
{"BroWi_FaBroDaHu_FaBroSoWi_FaSisDaHu_FaSisSoWi_HuBro_MoBroDaHu_MoBroSoWi_MoSisDaHu_MoSisSoWi_SisHu_WiSis"}
;; 0
%iega:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 1
%iega:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 2
%iega:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 3
%iega:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 4
%iega:3, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 5
%iega:3, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 6
%iega:3, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 7
%iega:3, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 8
%iega:3, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 9
%iega:3, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 10
%iega:3, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 11
%iega:3, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), spouse(Alter, E), gender(F, Ego), gender(G, Alter), not(equal(F, G)).


ieingga(Alter, Ego) :-  mother(A, Ego), sister(B, A), husband(Alter, B).
{"MoSisHu"}
;; 0
%ieingga:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


illoa(Alter, Ego) :-  female(Ego), parents(A, Ego), siblings(B, A), children(Alter, B).
{"FaBroDa_FaBroSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoSisDa_MoSisSo"}
;; 0
%illoa:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%illoa:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%illoa:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%illoa:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%illoa:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%illoa:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%illoa:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 7
%illoa:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


illunga(Alter, Ego) :-  male(Ego), parents(A, Ego), siblings(B, A), children(Alter, B).
{"FaBroDa_FaBroSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoSisDa_MoSisSo"}
;; 0
%illunga:0, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 1
%illunga:0, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%illunga:0, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 3
%illunga:0, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 4
%illunga:0, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 5
%illunga:0, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 6
%illunga:0, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 7
%illunga:0, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


innikcha(Alter, Ego) :-  step_son(Alter, Ego).
{"Stso"}
;; 0
%innikcha:0, step_son:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stso}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), son(Alter, B), son(Alter, A).


kuneaga(Alter, Ego) :-  male(Ego), mother(A, Ego), siblings(B, A), son(C, B), children(Alter, C).
{"MoBroSoDa_MoBroSoSo_MoSisSoDa_MoSisSoSo"}
;; 0
%kuneaga:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 1
%kuneaga:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 2
%kuneaga:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 3
%kuneaga:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).


kungeaga(Alter, Ego) :-  male(Ego), brother(A, Ego), children(Alter, A).
                     |   male(Ego), father(A, Ego), siblings(B, A), son(C, B), children(Alter, C).
{"BroDa_BroSo_FaBroSoDa_FaBroSoSo_FaSisSoDa_FaSisSoSo"}
;; 0
%kungeaga:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%kungeaga:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%kungeaga:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%kungeaga:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 4
%kungeaga:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 5
%kungeaga:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).


naya(Alter, Ego) :-  male(Ego), sister(Alter, Ego).
{"Sis"}
;; 0
%naya:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).


nayukcha(Alter, Ego) :-  male(Ego), step_sister(Alter, Ego).
{"Stsis"}
;; 0
%nayukcha:0, step_sister:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), daughter(Alter, D), daughter(Alter, C).
;; 1
%nayukcha:0, step_sister:1%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 male(Ego), father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), husband(D, C), not(equal(D, A)), daughter(Alter, D), daughter(Alter, C).


ningaongwa(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                       |   brother(A, Ego), daughter(B, A), husband(Alter, B).
                       |   male(Ego), parents(A, Ego), siblings(B, A), daughter(C, B), husband(Alter, C).
                       |   male(Ego), sister(A, Ego), husband(Alter, A).
                       |   female(Ego), sister(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_FaBroDaHu_FaSisDaHu_MoBroDaHu_MoSisDaHu_SisDaHu_SisHu"}
;; 0
%ningaongwa:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%ningaongwa:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%ningaongwa:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 3
%ningaongwa:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 4
%ningaongwa:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 5
%ningaongwa:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), husband(Alter, E).
;; 6
%ningaongwa:3, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 7
%ningaongwa:4, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


ningeowa(Alter, Ego) :-  grandparent[aux]14(Alter, Ego), female(Alter).
                     |  [ext],  parents(A, Ego), grandparent[aux]14(Alter, A), female(Alter).
                     |  [ext],  grandparents[aux]14(A, Ego), grandparent[aux]14(Alter, A), female(Alter).
                     |  [ext],  grandparents[aux]14(A, Ego), sister(Alter, A).
                     |  [ext],  spice(A, Ego), grandparent[aux]14(Alter, A), female(Alter).
{"FaFaFaMo_FaFaMo_FaFaMoMo_FaFaSis_FaMo_FaMoFaMo_FaMoMo_FaMoMoMo_FaMoSis_HuFaMo_HuMoMo_MoFaFaMo_MoFaMo_MoFaMoMo_MoFaSis_MoMo_MoMoFaMo_MoMoMo_MoMoMoMo_MoMoSis_WiFaMo_WiMoMo"}
;; 0
%ningeowa:0, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%ningeowa:0, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%ningeowa:1, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 3
%ningeowa:1, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 4
%ningeowa:1, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 5
%ningeowa:1, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 6
%ningeowa:2, grandparents[aux]14:0, parents:0, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 7
%ningeowa:2, grandparents[aux]14:0, parents:0, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 8
%ningeowa:2, grandparents[aux]14:0, parents:0, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 9
%ningeowa:2, grandparents[aux]14:0, parents:0, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 10
%ningeowa:2, grandparents[aux]14:0, parents:1, parents:0, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 11
%ningeowa:2, grandparents[aux]14:0, parents:1, parents:0, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 12
%ningeowa:2, grandparents[aux]14:0, parents:1, parents:1, grandparent[aux]14:0, parents:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 13
%ningeowa:2, grandparents[aux]14:0, parents:1, parents:1, grandparent[aux]14:0, parents:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 14
%ningeowa:3, grandparents[aux]14:0, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 15
%ningeowa:3, grandparents[aux]14:0, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 16
%ningeowa:3, grandparents[aux]14:0, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%ningeowa:3, grandparents[aux]14:0, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 18
%ningeowa:4, spice:0, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 19
%ningeowa:4, spice:0, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 20
%ningeowa:4, spice:1, grandparent[aux]14:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 21
%ningeowa:4, spice:1, grandparent[aux]14:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), female(Alter).


nooaga(Alter, Ego) :-  female(Ego), sister(A, Ego), children(Alter, A).
                   |   female(Ego), parents(A, Ego), siblings(B, A), daughter(C, B), children(Alter, C).
{"FaBroDaDa_FaBroDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%nooaga:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%nooaga:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%nooaga:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%nooaga:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%nooaga:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 5
%nooaga:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 6
%nooaga:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 7
%nooaga:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 8
%nooaga:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 9
%nooaga:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


nugleunga(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%nugleunga:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


nuka(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
{"Bro"}
;; 0
%nuka:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).


nukaha(Alter, Ego) :-  female(Ego), sister(Alter, Ego), younger(Alter, Ego).
{"Sis"}
;; 0
%nukaha:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).


ookooaga(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                     |   brother(A, Ego), son(B, A), wife(Alter, B).
                     |   female(Ego), parents(A, Ego), siblings(B, A), son(C, B), wife(Alter, C).
                     |   female(Ego), brother(A, Ego), wife(Alter, A).
                     |   male(Ego), sister(A, Ego), son(B, A), wife(Alter, B).
{"BroSoWi_BroWi_FaBroSoWi_FaSisSoWi_MoBroSoWi_MoSisSoWi_SisSoWi_SoWi"}
;; 0
%ookooaga:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%ookooaga:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%ookooaga:2, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 3
%ookooaga:2, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 4
%ookooaga:2, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).
;; 5
%ookooaga:2, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), wife(Alter, E).
;; 6
%ookooaga:3, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 7
%ookooaga:4, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).


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


pennecha(Alter, Ego) :-  step_daughter(Alter, Ego).
{"Stda"}
;; 0
%pennecha:0, step_daughter:0%
 Lvl=-1,  PC=2, S=2, Star=0,  {Stda}  
 spouse(A, Ego), spouse(B, A), not(equal(Ego, B)), daughter(Alter, B), daughter(Alter, A).


punningah(Alter, Ego) :-  daughter(Alter, Ego).
{"Da"}
;; 0
%punningah:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


shakinga(Alter, Ego) :-  husband(A, Ego), parents(Alter, A).
{"HuFa_HuMo"}
;; 0
%shakinga:0, parents:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%shakinga:0, parents:1%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).


shukiaga(Alter, Ego) :-  spice(A, Ego), gender(B, A), sibling(Alter, A), gender(C, Alter), not(equal(B, C)).
{"HuSis_WiBro"}
;; 0
%shukiaga:0, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).
;; 1
%shukiaga:0, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), gender(B, A), mother(C, A), father(D, A), child(Alter, C), child(Alter, D), not(equal(Alter, A)), gender(E, Alter), not(equal(B, E)).


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


ukka(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
{"FaBro"}
;; 0
%ukka:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).


ukuunga(Alter, Ego) :-  father(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi"}
;; 0
%ukuunga:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


ungaga(Alter, Ego) :-  female(Ego), brother(A, Ego), children(Alter, A).
                   |   female(Ego), parents(A, Ego), siblings(B, A), son(C, B), children(Alter, C).
{"BroDa_BroSo_FaBroSoDa_FaBroSoSo_FaSisSoDa_FaSisSoSo_MoBroSoDa_MoBroSoSo_MoSisSoDa_MoSisSoSo"}
;; 0
%ungaga:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 1
%ungaga:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%ungaga:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%ungaga:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 4
%ungaga:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 5
%ungaga:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 6
%ungaga:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 7
%ungaga:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 8
%ungaga:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 9
%ungaga:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).


weyoogwa(Alter, Ego) :-  male(Ego), sister(A, Ego), children(Alter, A).
                     |   male(Ego), parents(A, Ego), siblings(B, A), daughter(C, B), children(Alter, C).
{"FaBroDaDa_FaBroDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%weyoogwa:0, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 1
%weyoogwa:0, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 2
%weyoogwa:1, parents:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 3
%weyoogwa:1, parents:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 4
%weyoogwa:1, parents:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 5
%weyoogwa:1, parents:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 6
%weyoogwa:1, parents:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 7
%weyoogwa:1, parents:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 8
%weyoogwa:1, parents:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 9
%weyoogwa:1, parents:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


winga(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%winga:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).

