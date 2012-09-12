;;  Horn Clause Representation of Tucano Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Tucano") (author, "Marie Goehner, Birdie West, and William Merrifield") (date, "1985-01-01") (citation, "Marie Goehner, Birdie West, and William Merrifield in SOUTH AMERICAN KINSHIP pp. 55-69") 
(non_term, [aux], sib_mate, not_sib_mate, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(overlaps, (acabiji, (mami)), (acabijo, (mamio)), (cabiocjo, (mamio_maco)), (cabiocju, (mamio_macu)), (mami, (acabiji)), (mamio, (acabijo)), (mamio_maco, (cabiocjo)), (mamio_macu, (cabiocju)))
(userDefinedProperties, 
	(*phratry, type, string, single_value, true, restricted_to, ("Tucano", "non-Tucano")),
	(*sib, type, integer, single_value, true, restricted_to, (1, 2, 3, 4, 5))
  )


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

acabiji(Alter, Ego) :-  gen[aux]51AgnaticJunior(Alter, Ego), male(Alter).
                    |  [ext],  sib_mate(Alter, Ego), younger(Alter, Ego), male(Alter).
                    |  [ext],  not_sib_mate(Alter, Ego), *phratry(A, Ego), *phratry(A, Alter).
{"*_**_Bro_FaBroSo_FaFaBroSoSo"}
;; 0
%acabiji:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), male(Alter).
;; 1
%acabiji:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(Alter, D), male(Alter).
;; 2
%acabiji:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(Alter, F), male(Alter).
;; 3
%acabiji:1, sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
[ext],  *sib(A, Ego), *sib(A, Alter), not(equal(Ego, Alter)), younger(Alter, Ego), male(Alter).
;; 4
%acabiji:2, not_sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=4,  {*}  
[ext],  *sib(A, Ego), *sib(B, Alter), not(equal(A, B)), *phratry(C, Ego), *phratry(C, Alter).


acabijo(Alter, Ego) :-  gen[aux]51AgnaticJunior(Alter, Ego), female(Alter).
                    |  [ext],  sib_mate(Alter, Ego), younger(Alter, Ego), female(Alter).
{"**_FaBroDa_FaFaBroSoDa_Sis"}
;; 0
%acabijo:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), female(Alter).
;; 1
%acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(Alter, D), female(Alter).
;; 2
%acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(Alter, F), female(Alter).
;; 3
%acabijo:1, sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
[ext],  *sib(A, Ego), *sib(A, Alter), not(equal(Ego, Alter)), younger(Alter, Ego), female(Alter).


acabijo_maco(Alter, Ego) :-  female(Ego), acabijo(A, Ego), daughter(Alter, A).
{"**Da_FaBroDaDa_FaFaBroSoDaDa_SisDa"}
;; 0
%acabijo_maco:0, acabijo:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), younger(C, Ego), female(C), daughter(Alter, C).
;; 1
%acabijo_maco:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(E, D), female(E), daughter(Alter, E).
;; 2
%acabijo_maco:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(G, F), female(G), daughter(Alter, G).
;; 3
%acabijo_maco:0, acabijo:1, sib_mate:0%
 Lvl=-1,  PC=1, S=0, Star=2,  {**Da}  
[ext],  female(Ego), *sib(A, Ego), *sib(A, B), not(equal(Ego, B)), younger(B, Ego), female(B), daughter(Alter, B).


acabijo_macu(Alter, Ego) :-  female(Ego), acabijo(A, Ego), son(Alter, A).
{"**So_FaBroDaSo_FaFaBroSoDaSo_SisSo"}
;; 0
%acabijo_macu:0, acabijo:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), younger(C, Ego), female(C), son(Alter, C).
;; 1
%acabijo_macu:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(E, D), female(E), son(Alter, E).
;; 2
%acabijo_macu:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(G, F), female(G), son(Alter, G).
;; 3
%acabijo_macu:0, acabijo:1, sib_mate:0%
 Lvl=-1,  PC=1, S=0, Star=2,  {**So}  
[ext],  female(Ego), *sib(A, Ego), *sib(A, B), not(equal(Ego, B)), younger(B, Ego), female(B), son(Alter, B).


basu[aux]51(Alter, Ego) :-  parents(A, Ego), sibling(A, B), parent(B, Alter), gender(C, A), gender(D, B), not(equal(C, D)).
                        |  [ext],  parent(A, Ego), parent(B, A), sibling(C, B), parent(C, D), parents(D, Alter), gender(E, A), gender(E, B), gender(E, C), gender(F, D), not(equal(E, F)).
                        |  [ext],  parent(A, Ego), parent(B, A), sibling(C, B), parent(C, D), parents(D, Alter), gender(E, A), gender(E, B), gender(F, C), gender(E, D), not(equal(E, F)).
                        |  [ext],  parent(A, Ego), parent(B, A), sibling(C, B), parent(C, D), parents(D, Alter), gender(E, A), gender(F, B), gender(E, C), gender(E, D), not(equal(E, F)).
                        |  [ext],  parent(A, Ego), parent(B, A), sibling(C, B), parent(C, D), parents(D, Alter), gender(E, A), gender(F, B), gender(F, C), gender(F, D), not(equal(F, E)).
;; 0
%basu[aux]51:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)).
;; 1
%basu[aux]51:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)).
;; 2
%basu[aux]51:1, sibling:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)).
;; 3
%basu[aux]51:1, sibling:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)).
;; 4
%basu[aux]51:2, sibling:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)).
;; 5
%basu[aux]51:2, sibling:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)).
;; 6
%basu[aux]51:3, sibling:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)).
;; 7
%basu[aux]51:3, sibling:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)).
;; 8
%basu[aux]51:4, sibling:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)).
;; 9
%basu[aux]51:4, sibling:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)).


basuco(Alter, Ego) :-  basu[aux]51(Alter, Ego), female(Alter).
{"FaFaBroDaDa_FaFaSisSoDa_FaMoBroSoDa_FaMoSisDaDa_FaSisDa_MoBroDa_MoFaBroSoDa_MoFaSisDaDa_MoMoBroDaDa_MoMoSisSoDa"}
;; 0
%basuco:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)), female(Alter).
;; 1
%basuco:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)), female(Alter).
;; 2
%basuco:0, basu[aux]51:1, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)), female(Alter).
;; 3
%basuco:0, basu[aux]51:1, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)), female(Alter).
;; 4
%basuco:0, basu[aux]51:2, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)), female(Alter).
;; 5
%basuco:0, basu[aux]51:2, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)), female(Alter).
;; 6
%basuco:0, basu[aux]51:3, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)), female(Alter).
;; 7
%basuco:0, basu[aux]51:3, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)), female(Alter).
;; 8
%basuco:0, basu[aux]51:4, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)), female(Alter).
;; 9
%basuco:0, basu[aux]51:4, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)), female(Alter).


basuco_maco(Alter, Ego) :-  basuco(A, Ego), daughter(Alter, A).
{"FaSisDaDa_MoBroDaDa"}
;; 0
%basuco_maco:0, basuco:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), female(E), daughter(Alter, E).
;; 1
%basuco_maco:0, basuco:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), female(E), daughter(Alter, E).


basuco_macu(Alter, Ego) :-  basuco(A, Ego), son(Alter, A).
{"FaSisDaSo_MoBroDaSo"}
;; 0
%basuco_macu:0, basuco:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), female(E), son(Alter, E).
;; 1
%basuco_macu:0, basuco:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), female(E), son(Alter, E).


basucu(Alter, Ego) :-  basu[aux]51(Alter, Ego), male(Alter).
{"FaFaBroDaSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisDaSo_FaSisSo_MoBroSo_MoFaBroSoSo_MoFaSisDaSo_MoMoBroDaSo_MoMoSisSoSo"}
;; 0
%basucu:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)), male(Alter).
;; 1
%basucu:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, Alter), gender(E, A), gender(F, C), not(equal(E, F)), male(Alter).
;; 2
%basucu:0, basu[aux]51:1, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)), male(Alter).
;; 3
%basucu:0, basu[aux]51:1, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(G, E), gender(H, F), not(equal(G, H)), male(Alter).
;; 4
%basucu:0, basu[aux]51:2, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)), male(Alter).
;; 5
%basucu:0, basu[aux]51:2, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(G, B), gender(H, E), gender(G, F), not(equal(G, H)), male(Alter).
;; 6
%basucu:0, basu[aux]51:3, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)), male(Alter).
;; 7
%basucu:0, basu[aux]51:3, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(G, E), gender(G, F), not(equal(G, H)), male(Alter).
;; 8
%basucu:0, basu[aux]51:4, sibling:0, parents:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), mother(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)), male(Alter).
;; 9
%basucu:0, basu[aux]51:4, sibling:0, parents:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), parent(E, F), father(F, Alter), gender(G, A), gender(H, B), gender(H, E), gender(H, F), not(equal(H, G)), male(Alter).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


buji(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
{"DaHu"}
;; 0
%buji:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).


bujiba_co(Alter, Ego) :-  wife(A, Ego), gen[aux]51Agnatic(Alter, A), female(Alter).
                      |   male(Ego), gen[aux]51Agnatic(A, Ego), wife(Alter, A).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_WiFaBroDa_WiFaFaBroSoDa_WiSis"}
;; 0
%bujiba_co:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%bujiba_co:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%bujiba_co:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), male(G), child(Alter, G), female(Alter).
;; 3
%bujiba_co:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C).
;; 4
%bujiba_co:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 5
%bujiba_co:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), child(G, F), wife(Alter, G).


bujiba_cu(Alter, Ego) :-  husband(A, Ego), gen[aux]51Agnatic(Alter, A), male(Alter).
                      |   female(Ego), gen[aux]51Agnatic(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_HuBro_HuFaBroSo_HuFaFaBroSoSo_SisHu"}
;; 0
%bujiba_cu:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%bujiba_cu:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 2
%bujiba_cu:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), male(G), child(Alter, G), male(Alter).
;; 3
%bujiba_cu:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C).
;; 4
%bujiba_cu:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 5
%bujiba_cu:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), child(G, F), husband(Alter, G).


cabiocjo(Alter, Ego) :-  male(Ego), acabijo(A, Ego), daughter(Alter, A).
{"**Da_FaBroDaDa_FaFaBroSoDaDa_SisDa"}
;; 0
%cabiocjo:0, acabijo:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), younger(C, Ego), female(C), daughter(Alter, C).
;; 1
%cabiocjo:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(E, D), female(E), daughter(Alter, E).
;; 2
%cabiocjo:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(G, F), female(G), daughter(Alter, G).
;; 3
%cabiocjo:0, acabijo:1, sib_mate:0%
 Lvl=-1,  PC=1, S=0, Star=2,  {**Da}  
[ext],  male(Ego), *sib(A, Ego), *sib(A, B), not(equal(Ego, B)), younger(B, Ego), female(B), daughter(Alter, B).


cabiocju(Alter, Ego) :-  male(Ego), acabijo(A, Ego), son(Alter, A).
{"**So_FaBroDaSo_FaFaBroSoDaSo_SisSo"}
;; 0
%cabiocju:0, acabijo:0, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), younger(C, Ego), female(C), son(Alter, C).
;; 1
%cabiocju:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(E, D), female(E), son(Alter, E).
;; 2
%cabiocju:0, acabijo:0, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(G, F), female(G), son(Alter, G).
;; 3
%cabiocju:0, acabijo:1, sib_mate:0%
 Lvl=-1,  PC=1, S=0, Star=2,  {**So}  
[ext],  male(Ego), *sib(A, Ego), *sib(A, B), not(equal(Ego, B)), younger(B, Ego), female(B), son(Alter, B).


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


gen[aux]51Agnatic(Alter, Ego) :-  sibling(Alter, Ego).
                              |  [ext],  father(A, Ego), gen[aux]51Agnatic(B, A), male(B), child(Alter, B).
;; 0
%gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), child(Alter, F).


gen[aux]51AgnaticJunior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |  [ext],  father(A, Ego), gen[aux]51AgnaticJunior(B, A), male(B), child(Alter, B).
;; 0
%gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), male(D), child(Alter, D).
;; 2
%gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:1, gen[aux]51AgnaticJunior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), male(E), child(F, E), male(F), child(Alter, F).


gen[aux]51AgnaticJuniorGS(Alter, Ego) :-  siblings(Alter, Ego), younger(Alter, Ego).
                                      |  [ext],  father(A, Ego), gen[aux]51AgnaticJuniorGS(B, A), male(B), children(Alter, B).
;; 0
%gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), male(D), son(Alter, D).
;; 3
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), younger(D, A), male(D), daughter(Alter, D).
;; 4
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), male(D), son(Alter, D).
;; 5
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), male(D), daughter(Alter, D).
;; 6
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), male(E), son(F, E), male(F), son(Alter, F).
;; 7
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), male(E), son(F, E), male(F), daughter(Alter, F).
;; 8
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), male(E), daughter(F, E), male(F), son(Alter, F).
;; 9
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), younger(E, B), male(E), daughter(F, E), male(F), daughter(Alter, F).
;; 10
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), male(E), son(F, E), male(F), son(Alter, F).
;; 11
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), male(E), son(F, E), male(F), daughter(Alter, F).
;; 12
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), male(E), daughter(F, E), male(F), son(Alter, F).
;; 13
%gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:1, gen[aux]51AgnaticJuniorGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), male(E), daughter(F, E), male(F), daughter(Alter, F).


gen[aux]51AgnaticSenior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |  [ext],  father(A, Ego), gen[aux]51AgnaticSenior(B, A), male(B), child(Alter, B).
;; 0
%gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), male(D), child(Alter, D).
;; 2
%gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), male(E), child(F, E), male(F), child(Alter, F).


gen[aux]51AgnaticSeniorGS(Alter, Ego) :-  siblings(Alter, Ego), elder(Alter, Ego).
                                      |  [ext],  father(A, Ego), gen[aux]51AgnaticSeniorGS(B, A), male(B), children(Alter, B).
;; 0
%gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), male(D), son(Alter, D).
;; 3
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), elder(D, A), male(D), daughter(Alter, D).
;; 4
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), male(D), son(Alter, D).
;; 5
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), male(D), daughter(Alter, D).
;; 6
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), male(E), son(F, E), male(F), son(Alter, F).
;; 7
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), male(E), son(F, E), male(F), daughter(Alter, F).
;; 8
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), male(E), daughter(F, E), male(F), son(Alter, F).
;; 9
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), elder(E, B), male(E), daughter(F, E), male(F), daughter(Alter, F).
;; 10
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), male(E), son(F, E), male(F), son(Alter, F).
;; 11
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), male(E), son(F, E), male(F), daughter(Alter, F).
;; 12
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), male(E), daughter(F, E), male(F), son(Alter, F).
;; 13
%gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:1, gen[aux]51AgnaticSeniorGS:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), male(E), daughter(F, E), male(F), daughter(Alter, F).


gen[aux]51Agnatic_gs(Alter, Ego) :-  siblings(Alter, Ego).
                                 |  [ext],  father(A, Ego), gen[aux]51Agnatic_gs(B, A), male(B), children(Alter, B).
;; 0
%gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), male(D), son(Alter, D).
;; 3
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), male(D), daughter(Alter, D).
;; 4
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), male(D), son(Alter, D).
;; 5
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), male(D), daughter(Alter, D).
;; 6
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), male(E), son(F, E), male(F), son(Alter, F).
;; 7
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), male(E), son(F, E), male(F), daughter(Alter, F).
;; 8
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), male(E), daughter(F, E), male(F), son(Alter, F).
;; 9
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), male(E), daughter(F, E), male(F), daughter(Alter, F).
;; 10
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), male(E), son(F, E), male(F), son(Alter, F).
;; 11
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), male(E), son(F, E), male(F), daughter(Alter, F).
;; 12
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), male(E), daughter(F, E), male(F), son(Alter, F).
;; 13
%gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:1, gen[aux]51Agnatic_gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), male(E), daughter(F, E), male(F), daughter(Alter, F).


generation[aux]51(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]51gs(B, A), child(Alter, B).
;; 0
%generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]51gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]51gs(B, A), children(Alter, B).
;; 0
%generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


grandparent[aux]51(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                               |  [ext],  parents(A, Ego), parents(B, A), square[aux]51small(Alter, B).
                               |  [ext],  step_father(A, Ego), parent(Alter, A).
                               |  [ext],  step_mother(A, Ego), parent(Alter, A).
                               |  [ext],  wife(A, Ego), parents(B, A), parent(Alter, B).
                               |  [ext],  wife(A, Ego), parents(B, A), parents(C, B), square[aux]51small(Alter, C).
                               |  [ext],  husband(A, Ego), parents(B, A), parent(Alter, B).
                               |  [ext],  husband(A, Ego), parents(B, A), parents(C, B), square[aux]51small(Alter, C).
;; 0
%grandparent[aux]51:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]51:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 3
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B).
;; 4
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 5
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 6
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 7
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 8
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 9
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 10
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 11
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 12
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 13
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 14
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 15
%grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 16
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 17
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B).
;; 18
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 19
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 20
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 21
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 22
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 23
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 24
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 25
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 26
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 27
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 28
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 29
%grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 30
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 31
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B).
;; 32
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 33
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 34
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 35
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 36
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 37
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 38
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 39
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 40
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 41
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 42
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 43
%grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 44
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 45
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B).
;; 46
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 47
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 48
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 49
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 50
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 51
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 52
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 53
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 54
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 55
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 56
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 57
%grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 58
%grandparent[aux]51:2, step_father:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), parent(Alter, C).
;; 59
%grandparent[aux]51:3, step_mother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), parent(Alter, C).
;; 60
%grandparent[aux]51:4, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B).
;; 61
%grandparent[aux]51:4, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B).
;; 62
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 63
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 64
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 65
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 66
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 67
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 68
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 69
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 70
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 71
%grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 72
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 73
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 74
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 75
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 76
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 77
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 78
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 79
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 80
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 81
%grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 82
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 83
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 84
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 85
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 86
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 87
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 88
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 89
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 90
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 91
%grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 92
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 93
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 94
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 95
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 96
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 97
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 98
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 99
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 100
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 101
%grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 102
%grandparent[aux]51:6, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B).
;; 103
%grandparent[aux]51:6, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B).
;; 104
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 105
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 106
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 107
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 108
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 109
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 110
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 111
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 112
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 113
%grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 114
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 115
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 116
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 117
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 118
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 119
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 120
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 121
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 122
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 123
%grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 124
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 125
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 126
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 127
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 128
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 129
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 130
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 131
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 132
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 133
%grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 134
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 135
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 136
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 137
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 138
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 139
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 140
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 141
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 142
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 143
%grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).


grandparent[aux]512(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                                |  [ext],  parents(A, Ego), parents(B, A), square[aux]51small(Alter, B).
                                |  [ext],  step_father(A, Ego), parent(Alter, A).
                                |  [ext],  step_mother(A, Ego), parent(Alter, A).
                                |  [ext],  spouse(A, Ego), parents(B, A), parent(Alter, B).
                                |  [ext],  spouse(A, Ego), parents(B, A), parents(C, B), square[aux]51small(Alter, C).
;; 0
%grandparent[aux]512:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]512:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 3
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B).
;; 4
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 5
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 6
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 7
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 8
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 9
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 10
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 11
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 12
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 13
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 14
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 15
%grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 16
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 17
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B).
;; 18
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 19
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 20
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 21
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 22
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 23
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 24
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 25
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 26
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 27
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 28
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 29
%grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 30
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 31
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B).
;; 32
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 33
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 34
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 35
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 36
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 37
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 38
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 39
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 40
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 41
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 42
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 43
%grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 44
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 45
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B).
;; 46
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 47
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 48
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 49
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 50
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 51
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 52
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 53
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 54
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 55
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 56
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 57
%grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 58
%grandparent[aux]512:2, step_father:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), parent(Alter, C).
;; 59
%grandparent[aux]512:3, step_mother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), parent(Alter, C).
;; 60
%grandparent[aux]512:4, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), parent(Alter, B).
;; 61
%grandparent[aux]512:4, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), parent(Alter, B).
;; 62
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 63
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 64
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 65
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 66
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 67
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 68
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 69
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 70
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 71
%grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 72
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 73
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 74
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 75
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 76
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 77
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 78
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 79
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 80
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 81
%grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 82
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 83
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 84
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 85
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D).
;; 86
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 87
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 88
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 89
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D).
;; 90
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 91
%grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E).
;; 92
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 93
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 94
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 95
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D).
;; 96
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E).
;; 97
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E).
;; 98
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)).
;; 99
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D).
;; 100
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E).
;; 101
%grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  spouse(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E).


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


maco(Alter, Ego) :-  daughter(Alter, Ego).
                 |  [ext],  mugu(Ego, Alter).
{"BroDa_Da_FaBroSoDa_MoSisSoDa"}
;; 0
%maco:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%maco:1, mugu:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  female(Alter), father(A, Alter), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), male(Ego).
;; 2
%maco:1, mugu:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Ego), male(Ego).
;; 3
%maco:1, mugu:2, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Ego), male(Ego).


macu(Alter, Ego) :-  son(Alter, Ego).
{"So"}
;; 0
%macu:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).


mami(Alter, Ego) :-  gen[aux]51AgnaticSenior(Alter, Ego), male(Alter).
                 |  [ext],  sib_mate(Alter, Ego), elder(Alter, Ego), male(Alter).
                 |  [ext],  not_sib_mate(Alter, Ego), *phratry(A, Ego), *phratry(A, Alter).
{"*_**_Bro_FaBroSo_FaFaBroSoSo"}
;; 0
%mami:0, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), male(Alter).
;; 1
%mami:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), male(D), child(Alter, D), male(Alter).
;; 2
%mami:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), male(E), child(F, E), male(F), child(Alter, F), male(Alter).
;; 3
%mami:1, sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
[ext],  *sib(A, Ego), *sib(A, Alter), not(equal(Ego, Alter)), elder(Alter, Ego), male(Alter).
;; 4
%mami:2, not_sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=4,  {*}  
[ext],  *sib(A, Ego), *sib(B, Alter), not(equal(A, B)), *phratry(C, Ego), *phratry(C, Alter).


mamio(Alter, Ego) :-  gen[aux]51AgnaticSenior(Alter, Ego), female(Alter).
                  |  [ext],  *sib(A, Ego), *sib(A, Alter), elder(Alter, Ego), female(Alter).
{"**_FaBroDa_FaFaBroSoDa_Sis"}
;; 0
%mamio:0, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), female(Alter).
;; 1
%mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), male(D), child(Alter, D), female(Alter).
;; 2
%mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), male(E), child(F, E), male(F), child(Alter, F), female(Alter).
;; 3
%mamio:1%
 Lvl=0,  PC=0, S=0, Star=2,  {**}  
[ext],  *sib(A, Ego), *sib(A, Alter), elder(Alter, Ego), female(Alter).


mamio_maco(Alter, Ego) :-  mamio(A, Ego), daughter(Alter, A).
{"**Da_FaBroDaDa_FaFaBroSoDaDa_SisDa"}
;; 0
%mamio_maco:0, mamio:0, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), female(C), daughter(Alter, C).
;; 1
%mamio_maco:0, mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), male(D), child(E, D), female(E), daughter(Alter, E).
;; 2
%mamio_maco:0, mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), male(E), child(F, E), male(F), child(G, F), female(G), daughter(Alter, G).
;; 3
%mamio_maco:0, mamio:1%
 Lvl=-1,  PC=1, S=0, Star=2,  {**Da}  
[ext],  *sib(A, Ego), *sib(A, B), elder(B, Ego), female(B), daughter(Alter, B).


mamio_macu(Alter, Ego) :-  mamio(A, Ego), son(Alter, A).
{"**So_FaBroDaSo_FaFaBroSoDaSo_SisSo"}
;; 0
%mamio_macu:0, mamio:0, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), elder(C, Ego), female(C), son(Alter, C).
;; 1
%mamio_macu:0, mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), male(D), child(E, D), female(E), son(Alter, E).
;; 2
%mamio_macu:0, mamio:0, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:1, gen[aux]51AgnaticSenior:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), male(E), child(F, E), male(F), child(G, F), female(G), son(Alter, G).
;; 3
%mamio_macu:0, mamio:1%
 Lvl=-1,  PC=1, S=0, Star=2,  {**So}  
[ext],  *sib(A, Ego), *sib(A, B), elder(B, Ego), female(B), son(Alter, B).


maneco(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%maneco:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%maneco:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


manecu(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
{"HuFa_WiFa"}
;; 0
%manecu:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%manecu:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


marupu(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%marupu:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


mecu(Alter, Ego) :-  male(Ego), mother(A, Ego), sibling(A, Alter), male(Alter).
                 |   male(Ego), mother(A, Ego), mother(B, A), sibling(B, C), mother(C, Alter), male(Alter).
                 |   male(Ego), mother(A, Ego), father(B, A), sibling(B, C), father(C, Alter), male(Alter).
{"MoBro_MoFaBroSo_MoMoSisSo"}
;; 0
%mecu:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 male(Ego), mother(A, Ego), mother(B, Alter), father(C, Alter), child(A, B), child(A, C), not(equal(A, Alter)), male(Alter).
;; 1
%mecu:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Alter), male(Alter).
;; 2
%mecu:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Alter), male(Alter).


mecusa(Alter, Ego) :-  female(Ego), mother(A, Ego), sibling(A, Alter), male(Alter).
                   |   female(Ego), mother(A, Ego), mother(B, A), sibling(B, C), mother(C, Alter), male(Alter).
                   |   female(Ego), mother(A, Ego), father(B, A), sibling(B, C), father(C, Alter), male(Alter).
{"MoBro_MoFaBroSo_MoMoSisSo"}
;; 0
%mecusa:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 female(Ego), mother(A, Ego), mother(B, Alter), father(C, Alter), child(A, B), child(A, C), not(equal(A, Alter)), male(Alter).
;; 1
%mecusa:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Alter), male(Alter).
;; 2
%mecusa:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Alter), male(Alter).


mee(Alter, Ego) :-  male(Ego), father(A, Ego), sibling(A, Alter), male(Alter).
                |  [ext],  male(Ego), father(A, Ego), father(B, A), sibling(B, C), father(C, Alter), male(Alter).
                |  [ext],  male(Ego), father(A, Ego), mother(B, A), sibling(B, C), mother(C, Alter), male(Alter).
{"FaBro_FaFaBroSo_FaMoSisSo"}
;; 0
%mee:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 male(Ego), father(A, Ego), mother(B, Alter), father(C, Alter), child(A, B), child(A, C), not(equal(A, Alter)), male(Alter).
;; 1
%mee:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Alter), male(Alter).
;; 2
%mee:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Alter), male(Alter).


meecu(Alter, Ego) :-  mee(Ego, Alter).
{"BroSo_FaBroSoSo_MoSisSoSo"}
;; 0
%meecu:0, mee:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Alter), father(A, Alter), mother(B, Ego), father(C, Ego), child(A, B), child(A, C), not(equal(A, Ego)), male(Ego).
;; 1
%meecu:0, mee:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Alter), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Ego), male(Ego).
;; 2
%meecu:0, mee:2, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Ego), male(Ego).


mugo(Alter, Ego) :-  mother(A, Ego), sibling(A, Alter), female(Alter).
                 |   mother(A, Ego), mother(B, A), sibling(B, C), mother(C, Alter), female(Alter).
                 |   mother(A, Ego), father(B, A), sibling(B, C), father(C, Alter), female(Alter).
{"MoFaBroDa_MoMoSisDa_MoSis"}
;; 0
%mugo:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, Alter), father(C, Alter), child(A, B), child(A, C), not(equal(A, Alter)), female(Alter).
;; 1
%mugo:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Alter), female(Alter).
;; 2
%mugo:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Alter), female(Alter).


mugu(Alter, Ego) :-  female(Ego), father(A, Ego), sibling(A, Alter), male(Alter).
                 |  [ext],  female(Ego), father(A, Ego), father(B, A), sibling(B, C), father(C, Alter), male(Alter).
                 |  [ext],  female(Ego), father(A, Ego), mother(B, A), sibling(B, C), mother(C, Alter), male(Alter).
{"FaBro_FaFaBroSo_FaMoSisSo"}
;; 0
%mugu:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 female(Ego), father(A, Ego), mother(B, Alter), father(C, Alter), child(A, B), child(A, C), not(equal(A, Alter)), male(Alter).
;; 1
%mugu:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), father(D, Alter), male(Alter).
;; 2
%mugu:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), mother(D, Alter), male(Alter).


neco(Alter, Ego) :-  grandparent[aux]51(Alter, Ego), female(Alter).
{"FaFaFaFaMo_FaFaFaFaSis_FaFaFaMo_FaFaFaMoMo_FaFaFaMoSis_FaFaFaSis_FaFaMo_FaFaMoFaMo_FaFaMoFaSis_FaFaMoMo_FaFaMoMoMo_FaFaMoMoSis_FaFaMoSis_FaFaSis_FaMo_FaMoFaFaMo_FaMoFaFaSis_FaMoFaMo_FaMoFaMoMo_FaMoFaMoSis_FaMoFaSis_FaMoMo_FaMoMoFaMo_FaMoMoFaSis_FaMoMoMo_FaMoMoMoMo_FaMoMoMoSis_FaMoMoSis_FaMoSis_HuFaFaFaFaMo_HuFaFaFaMo_HuFaFaFaMoMo_HuFaFaFaSis_HuFaFaMo_HuFaFaMoFaMo_HuFaFaMoMo_HuFaFaMoMoMo_HuFaFaMoSis_HuFaFaSis_HuFaMo_HuFaMoFaFaMo_HuFaMoFaMo_HuFaMoFaMoMo_HuFaMoFaSis_HuFaMoMo_HuFaMoMoFaMo_HuFaMoMoMo_HuFaMoMoMoMo_HuFaMoMoSis_HuFaMoSis_HuMoFaFaFaMo_HuMoFaFaMo_HuMoFaFaMoMo_HuMoFaFaSis_HuMoFaMo_HuMoFaMoFaMo_HuMoFaMoMo_HuMoFaMoMoMo_HuMoFaMoSis_HuMoFaSis_HuMoMo_HuMoMoFaFaMo_HuMoMoFaMo_HuMoMoFaMoMo_HuMoMoFaSis_HuMoMoMo_HuMoMoMoFaMo_HuMoMoMoMo_HuMoMoMoMoMo_HuMoMoMoSis_HuMoMoSis_MoFaFaFaMo_MoFaFaFaSis_MoFaFaMo_MoFaFaMoMo_MoFaFaMoSis_MoFaFaSis_MoFaMo_MoFaMoFaMo_MoFaMoFaSis_MoFaMoMo_MoFaMoMoMo_MoFaMoMoSis_MoFaMoSis_MoFaSis_MoMo_MoMoFaFaMo_MoMoFaFaSis_MoMoFaMo_MoMoFaMoMo_MoMoFaMoSis_MoMoFaSis_MoMoMo_MoMoMoFaMo_MoMoMoFaSis_MoMoMoMo_MoMoMoMoMo_MoMoMoMoSis_MoMoMoSis_MoMoSis_StfaMo_StmoMo_WiFaFaFaFaMo_WiFaFaFaMo_WiFaFaFaMoMo_WiFaFaFaSis_WiFaFaMo_WiFaFaMoFaMo_WiFaFaMoMo_WiFaFaMoMoMo_WiFaFaMoSis_WiFaFaSis_WiFaMo_WiFaMoFaFaMo_WiFaMoFaMo_WiFaMoFaMoMo_WiFaMoFaSis_WiFaMoMo_WiFaMoMoFaMo_WiFaMoMoMo_WiFaMoMoMoMo_WiFaMoMoSis_WiFaMoSis_WiMoFaFaFaMo_WiMoFaFaMo_WiMoFaFaMoMo_WiMoFaFaSis_WiMoFaMo_WiMoFaMoFaMo_WiMoFaMoMo_WiMoFaMoMoMo_WiMoFaMoSis_WiMoFaSis_WiMoMo_WiMoMoFaFaMo_WiMoMoFaMo_WiMoMoFaMoMo_WiMoMoFaSis_WiMoMoMo_WiMoMoMoFaMo_WiMoMoMoMo_WiMoMoMoMoMo_WiMoMoMoSis_WiMoMoSis"}
;; 0
%neco:0, grandparent[aux]51:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%neco:0, grandparent[aux]51:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 4
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 5
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 6
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 7
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 8
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 9
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 10
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 12
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 13
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 14
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 15
%neco:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 16
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 18
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 19
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 20
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 21
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 22
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 23
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 24
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 25
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 26
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 27
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 28
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 29
%neco:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 30
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 31
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 32
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 33
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 34
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 35
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 36
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 37
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 38
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 39
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 40
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 41
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 42
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 43
%neco:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 44
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 45
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 46
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 47
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 48
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 49
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 50
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 51
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 52
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 53
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 54
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 55
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 56
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 57
%neco:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 58
%neco:0, grandparent[aux]51:2, step_father:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StfaMo}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), parent(Alter, C), female(Alter).
;; 59
%neco:0, grandparent[aux]51:3, step_mother:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StmoMo}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), parent(Alter, C), female(Alter).
;; 60
%neco:0, grandparent[aux]51:4, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 61
%neco:0, grandparent[aux]51:4, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 62
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 63
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 64
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoMoMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 65
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 66
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 67
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 68
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoMoFaSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 69
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 70
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 71
%neco:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 72
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 73
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 74
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoFaMoSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 75
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 76
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 77
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 78
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoFaFaSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 79
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 80
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaMoMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 81
%neco:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaFaMo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 82
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 83
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 84
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaMoMoSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 85
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 86
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 87
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 88
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaMoFaSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 89
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 90
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaMoMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 91
%neco:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaFaMo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 92
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaSis}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 93
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 94
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaFaMoSis}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 95
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 96
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 97
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 98
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaFaFaSis}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 99
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 100
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaMoMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 101
%neco:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaFaMo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 102
%neco:0, grandparent[aux]51:6, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 103
%neco:0, grandparent[aux]51:6, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 104
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 105
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 106
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoMoMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 107
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 108
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 109
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 110
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoMoFaSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 111
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 112
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 113
%neco:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 114
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 115
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 116
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoFaMoSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 117
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 118
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 119
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 120
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoFaFaSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 121
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 122
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaMoMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 123
%neco:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaFaMo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 124
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 125
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 126
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaMoMoSis}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 127
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 128
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 129
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 130
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaMoFaSis}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 131
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 132
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaMoMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 133
%neco:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaFaMo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 134
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaSis}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 135
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 136
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaFaMoSis}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 137
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 138
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 139
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), female(Alter).
;; 140
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaFaFaSis}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 141
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 142
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaMoMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), female(Alter).
;; 143
%neco:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaFaMo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), female(Alter).


necu(Alter, Ego) :-  grandparent[aux]51(Alter, Ego), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaFa_FaFaFaFaBro_FaFaFaFaFa_FaFaFaMoBro_FaFaFaMoFa_FaFaMoBro_FaFaMoFa_FaFaMoFaBro_FaFaMoFaFa_FaFaMoMoBro_FaFaMoMoFa_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaFa_FaMoFaFaBro_FaMoFaFaFa_FaMoFaMoBro_FaMoFaMoFa_FaMoMoBro_FaMoMoFa_FaMoMoFaBro_FaMoMoFaFa_FaMoMoMoBro_FaMoMoMoFa_HuFaFa_HuFaFaBro_HuFaFaFa_HuFaFaFaBro_HuFaFaFaFa_HuFaFaFaFaFa_HuFaFaFaMoFa_HuFaFaMoBro_HuFaFaMoFa_HuFaFaMoFaFa_HuFaFaMoMoFa_HuFaMoBro_HuFaMoFa_HuFaMoFaBro_HuFaMoFaFa_HuFaMoFaFaFa_HuFaMoFaMoFa_HuFaMoMoBro_HuFaMoMoFa_HuFaMoMoFaFa_HuFaMoMoMoFa_HuMoFa_HuMoFaBro_HuMoFaFa_HuMoFaFaBro_HuMoFaFaFa_HuMoFaFaFaFa_HuMoFaFaMoFa_HuMoFaMoBro_HuMoFaMoFa_HuMoFaMoFaFa_HuMoFaMoMoFa_HuMoMoBro_HuMoMoFa_HuMoMoFaBro_HuMoMoFaFa_HuMoMoFaFaFa_HuMoMoFaMoFa_HuMoMoMoBro_HuMoMoMoFa_HuMoMoMoFaFa_HuMoMoMoMoFa_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaFa_MoFaFaFaBro_MoFaFaFaFa_MoFaFaMoBro_MoFaFaMoFa_MoFaMoBro_MoFaMoFa_MoFaMoFaBro_MoFaMoFaFa_MoFaMoMoBro_MoFaMoMoFa_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaFa_MoMoFaFaBro_MoMoFaFaFa_MoMoFaMoBro_MoMoFaMoFa_MoMoMoBro_MoMoMoFa_MoMoMoFaBro_MoMoMoFaFa_MoMoMoMoBro_MoMoMoMoFa_StfaFa_StmoFa_WiFaFa_WiFaFaBro_WiFaFaFa_WiFaFaFaBro_WiFaFaFaFa_WiFaFaFaFaFa_WiFaFaFaMoFa_WiFaFaMoBro_WiFaFaMoFa_WiFaFaMoFaFa_WiFaFaMoMoFa_WiFaMoBro_WiFaMoFa_WiFaMoFaBro_WiFaMoFaFa_WiFaMoFaFaFa_WiFaMoFaMoFa_WiFaMoMoBro_WiFaMoMoFa_WiFaMoMoFaFa_WiFaMoMoMoFa_WiMoFa_WiMoFaBro_WiMoFaFa_WiMoFaFaBro_WiMoFaFaFa_WiMoFaFaFaFa_WiMoFaFaMoFa_WiMoFaMoBro_WiMoFaMoFa_WiMoFaMoFaFa_WiMoFaMoMoFa_WiMoMoBro_WiMoMoFa_WiMoMoFaBro_WiMoMoFaFa_WiMoMoFaFaFa_WiMoMoFaMoFa_WiMoMoMoBro_WiMoMoMoFa_WiMoMoMoFaFa_WiMoMoMoMoFa"}
;; 0
%necu:0, grandparent[aux]51:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%necu:0, grandparent[aux]51:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 4
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 5
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 6
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 7
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 8
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 9
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 10
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 12
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 13
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 14
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 15
%necu:0, grandparent[aux]51:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 16
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 18
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 19
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 20
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 21
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 22
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 23
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 24
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 25
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 26
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 27
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 28
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 29
%necu:0, grandparent[aux]51:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 30
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 31
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 32
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 33
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 34
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 35
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 36
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 37
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 38
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 39
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 40
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 41
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 42
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 43
%necu:0, grandparent[aux]51:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 44
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 45
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 46
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 48
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 49
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 50
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 51
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 52
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 53
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 54
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 55
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 56
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 57
%necu:0, grandparent[aux]51:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 58
%necu:0, grandparent[aux]51:2, step_father:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StfaFa}  
[ext],  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), parent(Alter, C), male(Alter).
;; 59
%necu:0, grandparent[aux]51:3, step_mother:0%
 Lvl=2,  PC=3, S=1, Star=0,  {StmoFa}  
[ext],  father(A, Ego), mother(B, Ego), wife(C, A), not(equal(C, B)), parent(Alter, C), male(Alter).
;; 60
%necu:0, grandparent[aux]51:4, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
[ext],  wife(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 61
%necu:0, grandparent[aux]51:4, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
[ext],  wife(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 62
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 63
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 64
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoMoMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 65
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 66
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 67
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 68
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoMoFaBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 69
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 70
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 71
%necu:0, grandparent[aux]51:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoMoFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 72
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 73
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 74
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoFaMoBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 75
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 76
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 77
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaMoFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 78
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoFaFaBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 79
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiMoFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 80
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaMoFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 81
%necu:0, grandparent[aux]51:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiMoFaFaFaFa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 82
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 83
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 84
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaMoMoBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 85
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 86
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 87
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoMoFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 88
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaMoFaBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 89
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaMoFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 90
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaMoFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 91
%necu:0, grandparent[aux]51:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaMoFaFaFa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 92
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 93
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {WiFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 94
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaFaMoBro}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 95
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 96
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 97
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaMoFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 98
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiFaFaFaBro}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 99
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {WiFaFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 100
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaMoFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 101
%necu:0, grandparent[aux]51:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {WiFaFaFaFaFa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 102
%necu:0, grandparent[aux]51:6, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
[ext],  husband(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 103
%necu:0, grandparent[aux]51:6, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
[ext],  husband(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 104
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 105
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 106
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoMoMoBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 107
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 108
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 109
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 110
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoMoFaBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 111
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 112
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 113
%necu:0, grandparent[aux]51:7, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoMoFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 114
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 115
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 116
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoFaMoBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 117
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 118
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 119
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaMoFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 120
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoFaFaBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 121
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuMoFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 122
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaMoFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 123
%necu:0, grandparent[aux]51:7, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuMoFaFaFaFa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 124
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 125
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 126
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaMoMoBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 127
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 128
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 129
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoMoFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 130
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaMoFaBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 131
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaMoFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 132
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaMoFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 133
%necu:0, grandparent[aux]51:7, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaMoFaFaFa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 134
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 135
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:1%
 Lvl=3,  PC=3, S=1, Star=0,  {HuFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 136
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaFaMoBro}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 137
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 138
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 139
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaMoFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Alter, E), male(Alter).
;; 140
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuFaFaFaBro}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 141
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=4,  PC=4, S=1, Star=0,  {HuFaFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 142
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaMoFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Alter, E), male(Alter).
;; 143
%necu:0, grandparent[aux]51:7, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=5,  PC=5, S=1, Star=0,  {HuFaFaFaFaFa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), father(E, D), parent(Alter, E), male(Alter).


not_sib_mate(Alter, Ego) :-  *sib(A, Ego), *sib(B, Alter), not(equal(A, B)).
;; 0
%not_sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 *sib(A, Ego), *sib(B, Alter), not(equal(A, B)).


numo(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%numo:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


paaco(Alter, Ego) :-  male(Ego), basucu(A, Ego), daughter(Alter, A).
{"FaSisSoDa_MoBroSoDa"}
;; 0
%paaco:0, basucu:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), male(E), daughter(Alter, E).
;; 1
%paaco:0, basucu:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), male(E), daughter(Alter, E).


paacu(Alter, Ego) :-  male(Ego), basucu(A, Ego), son(Alter, A).
{"FaSisSoSo_MoBroSoSo"}
;; 0
%paacu:0, basucu:0, basu[aux]51:0, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), male(E), son(Alter, E).
;; 1
%paacu:0, basucu:0, basu[aux]51:0, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), parent(C, E), gender(F, A), gender(G, C), not(equal(F, G)), male(E), son(Alter, E).


paco(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%paco:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


paco[aux]51(Alter, Ego) :-  father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(Alter, C), child(Alter, D).
                        |  [ext],  mother(A, Ego), sister(B, A), mother(B, Alter).
                        |  [ext],  father(A, Ego), step_brother(B, A), father(B, Alter).
                        |  [ext],  mother(A, Ego), father(B, A), brother(C, B), father(C, D), mother(D, Alter).
                        |  [ext],  mother(A, Ego), mother(B, A), brother(C, B), son(D, C), child(Alter, D).
                        |  [ext],  mother(A, Ego), father(B, A), sister(C, B), mother(C, D), father(D, Alter).
                        |  [ext],  father(A, Ego), mother(B, A), brother(C, B), father(C, D), mother(D, Alter).
                        |  [ext],  father(A, Ego), mother(B, A), sister(C, B), mother(C, D), father(D, Alter).
;; 0
%paco[aux]51:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(Alter, C), child(Alter, D).
;; 1
%paco[aux]51:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(D, Alter).
;; 2
%paco[aux]51:2, step_brother:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(F, Alter).
;; 3
%paco[aux]51:2, step_brother:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(F, Alter).
;; 4
%paco[aux]51:3, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter).
;; 5
%paco[aux]51:4, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 6
%paco[aux]51:5, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter).
;; 7
%paco[aux]51:6, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter).
;; 8
%paco[aux]51:7, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter).


paco_maco(Alter, Ego) :-  paco[aux]51(Alter, Ego), female(Alter).
{"FaMoBroDaDa_FaMoSisSoDa_FaStbroDa_MoFaBroDaDa_MoFaSisSoDa_MoMoBroSoDa_MoSisDa_Stsis"}
;; 0
%paco_maco:0, paco[aux]51:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stsis}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(Alter, C), child(Alter, D), female(Alter).
;; 1
%paco_maco:0, paco[aux]51:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(D, Alter), female(Alter).
;; 2
%paco_maco:0, paco[aux]51:2, step_brother:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(F, Alter), female(Alter).
;; 3
%paco_maco:0, paco[aux]51:2, step_brother:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(F, Alter), female(Alter).
;; 4
%paco_maco:0, paco[aux]51:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter), female(Alter).
;; 5
%paco_maco:0, paco[aux]51:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), female(Alter).
;; 6
%paco_maco:0, paco[aux]51:5, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter), female(Alter).
;; 7
%paco_maco:0, paco[aux]51:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter), female(Alter).
;; 8
%paco_maco:0, paco[aux]51:7, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter), female(Alter).


paco_maco_maco(Alter, Ego) :-  paco_maco(A, Ego), daughter(Alter, A).
{"FaMoBroDaDaDa_FaMoSisSoDaDa_FaStbroDaDa_MoFaBroDaDaDa_MoFaSisSoDaDa_MoMoBroSoDaDa_MoSisDaDa_StsisDa"}
;; 0
%paco_maco_maco:0, paco_maco:0, paco[aux]51:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisDa}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(E, C), child(E, D), female(E), daughter(Alter, E).
;; 1
%paco_maco_maco:0, paco_maco:0, paco[aux]51:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(D, E), female(E), daughter(Alter, E).
;; 2
%paco_maco_maco:0, paco_maco:0, paco[aux]51:2, step_brother:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(F, G), female(G), daughter(Alter, G).
;; 3
%paco_maco_maco:0, paco_maco:0, paco[aux]51:2, step_brother:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(F, G), female(G), daughter(Alter, G).
;; 4
%paco_maco_maco:0, paco_maco:0, paco[aux]51:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, G), female(G), daughter(Alter, G).
;; 5
%paco_maco_maco:0, paco_maco:0, paco[aux]51:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 6
%paco_maco_maco:0, paco_maco:0, paco[aux]51:5, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, G), female(G), daughter(Alter, G).
;; 7
%paco_maco_maco:0, paco_maco:0, paco[aux]51:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, G), female(G), daughter(Alter, G).
;; 8
%paco_maco_maco:0, paco_maco:0, paco[aux]51:7, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, G), female(G), daughter(Alter, G).


paco_maco_macu(Alter, Ego) :-  paco_maco(A, Ego), son(Alter, A).
{"FaMoBroDaDaSo_FaMoSisSoDaSo_FaStbroDaSo_MoFaBroDaDaSo_MoFaSisSoDaSo_MoMoBroSoDaSo_MoSisDaSo_StsisSo"}
;; 0
%paco_maco_macu:0, paco_maco:0, paco[aux]51:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {StsisSo}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(E, C), child(E, D), female(E), son(Alter, E).
;; 1
%paco_maco_macu:0, paco_maco:0, paco[aux]51:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(D, E), female(E), son(Alter, E).
;; 2
%paco_maco_macu:0, paco_maco:0, paco[aux]51:2, step_brother:0%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(F, G), female(G), son(Alter, G).
;; 3
%paco_maco_macu:0, paco_maco:0, paco[aux]51:2, step_brother:1%
 Lvl=-1,  PC=7, S=2, Star=0,  {FaStbroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(F, G), female(G), son(Alter, G).
;; 4
%paco_maco_macu:0, paco_maco:0, paco[aux]51:3, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, G), female(G), son(Alter, G).
;; 5
%paco_maco_macu:0, paco_maco:0, paco[aux]51:4, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 6
%paco_maco_macu:0, paco_maco:0, paco[aux]51:5, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, G), female(G), son(Alter, G).
;; 7
%paco_maco_macu:0, paco_maco:0, paco[aux]51:6, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, G), female(G), son(Alter, G).
;; 8
%paco_maco_macu:0, paco_maco:0, paco[aux]51:7, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, G), female(G), son(Alter, G).


paco_macu(Alter, Ego) :-  paco[aux]51(Alter, Ego), male(Alter).
{"FaMoBroDaSo_FaMoSisSoSo_FaStbroSo_MoFaBroDaSo_MoFaSisSoSo_MoMoBroSoSo_MoSisSo_Stbro"}
;; 0
%paco_macu:0, paco[aux]51:0%
 Lvl=0,  PC=4, S=2, Star=0,  {Stbro}  
 father(A, Ego), mother(B, Ego), husband(C, B), not(equal(C, A)), wife(D, C), not(equal(D, B)), child(Alter, C), child(Alter, D), male(Alter).
;; 1
%paco_macu:0, paco[aux]51:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(D, Alter), male(Alter).
;; 2
%paco_macu:0, paco[aux]51:2, step_brother:0%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, A), husband(D, C), not(equal(D, B)), wife(E, D), not(equal(E, C)), son(F, E), son(F, D), father(F, Alter), male(Alter).
;; 3
%paco_macu:0, paco[aux]51:2, step_brother:1%
 Lvl=0,  PC=6, S=2, Star=0,  {FaStbroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, A), wife(D, B), not(equal(D, C)), husband(E, D), not(equal(E, B)), son(F, E), son(F, D), father(F, Alter), male(Alter).
;; 4
%paco_macu:0, paco[aux]51:3, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter), male(Alter).
;; 5
%paco_macu:0, paco[aux]51:4, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F), male(Alter).
;; 6
%paco_macu:0, paco[aux]51:5, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter), male(Alter).
;; 7
%paco_macu:0, paco[aux]51:6, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), father(E, F), mother(F, Alter), male(Alter).
;; 8
%paco_macu:0, paco[aux]51:7, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), mother(E, F), father(F, Alter), male(Alter).


pacu(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%pacu:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


parameo(Alter, Ego) :-  grandparent[aux]512(Ego, Alter), female(Alter).
{"BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaSoDa_BroDaDaSoWi_BroDaSoDa_BroDaSoDaDa_BroDaSoSoDa_BroDaSoSoWi_BroDaSoWi_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaSoDa_BroSoDaSoWi_BroSoSoDa_BroSoSoDaDa_BroSoSoSoDa_BroSoSoSoWi_BroSoSoWi_DaDa_DaDaDa_DaDaDaDa_DaDaDaDaDa_DaDaDaDaSoWi_DaDaDaSoDa_DaDaDaSoSoWi_DaDaDaSoWi_DaDaSoDa_DaDaSoDaDa_DaDaSoDaSoWi_DaDaSoSoDa_DaDaSoSoSoWi_DaDaSoSoWi_DaDaSoWi_DaSoDa_DaSoDaDa_DaSoDaDaDa_DaSoDaDaSoWi_DaSoDaSoDa_DaSoDaSoSoWi_DaSoDaSoWi_DaSoSoDa_DaSoSoDaDa_DaSoSoDaSoWi_DaSoSoSoDa_DaSoSoSoSoWi_DaSoSoSoWi_DaSoSoWi_DaSoWi_DaStda_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaSoDa_SisDaDaSoWi_SisDaSoDa_SisDaSoDaDa_SisDaSoSoDa_SisDaSoSoWi_SisDaSoWi_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaSoDa_SisSoDaSoWi_SisSoSoDa_SisSoSoDaDa_SisSoSoSoDa_SisSoSoSoWi_SisSoSoWi_SoDa_SoDaDa_SoDaDaDa_SoDaDaDaDa_SoDaDaDaSoWi_SoDaDaSoDa_SoDaDaSoSoWi_SoDaDaSoWi_SoDaSoDa_SoDaSoDaDa_SoDaSoDaSoWi_SoDaSoSoDa_SoDaSoSoSoWi_SoDaSoSoWi_SoDaSoWi_SoSoDa_SoSoDaDa_SoSoDaDaDa_SoSoDaDaSoWi_SoSoDaSoDa_SoSoDaSoSoWi_SoSoDaSoWi_SoSoSoDa_SoSoSoDaDa_SoSoSoDaSoWi_SoSoSoSoDa_SoSoSoSoSoWi_SoSoSoSoWi_SoSoSoWi_SoSoWi_SoStda"}
;; 0
%parameo:0, grandparent[aux]512:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), parent(Ego, A), female(Alter).
;; 1
%parameo:0, grandparent[aux]512:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), parent(Ego, A), female(Alter).
;; 2
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Alter).
;; 3
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), female(Alter).
;; 4
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 5
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 6
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 7
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 8
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 9
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 10
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 11
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 12
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 13
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 14
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 15
%parameo:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 16
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Alter).
;; 17
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), female(Alter).
;; 18
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 19
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 20
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 21
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 22
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 23
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 24
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 25
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 26
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 27
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 28
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 29
%parameo:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 30
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Alter).
;; 31
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), female(Alter).
;; 32
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 33
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 34
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 35
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 36
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 37
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 38
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 39
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 40
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 41
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 42
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 43
%parameo:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 44
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Alter).
;; 45
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), female(Alter).
;; 46
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 47
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 48
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 49
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 50
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 51
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 52
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 53
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 54
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 55
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 56
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 57
%parameo:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 58
%parameo:0, grandparent[aux]512:2, step_father:0%
 Lvl=-2,  PC=3, S=1, Star=0,  {SoStda}  
[ext],  father(A, Alter), mother(B, Alter), husband(C, B), not(equal(C, A)), parent(Ego, C), female(Alter).
;; 59
%parameo:0, grandparent[aux]512:3, step_mother:0%
 Lvl=-2,  PC=3, S=1, Star=0,  {DaStda}  
[ext],  father(A, Alter), mother(B, Alter), wife(C, A), not(equal(C, B)), parent(Ego, C), female(Alter).
;; 60
%parameo:0, grandparent[aux]512:4, parents:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), parent(Ego, B), female(Alter).
;; 61
%parameo:0, grandparent[aux]512:4, parents:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
[ext],  spouse(A, Alter), father(B, A), parent(Ego, B), female(Alter).
;; 62
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 63
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 64
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 65
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 66
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 67
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 68
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 69
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 70
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 71
%parameo:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoDaDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 72
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 73
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 74
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 75
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 76
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 77
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 78
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 79
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 80
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 81
%parameo:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoSoDaSoWi}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 82
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 83
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Alter).
;; 84
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 85
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 86
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 87
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 88
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 89
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 90
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 91
%parameo:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoDaSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 92
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 93
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Alter).
;; 94
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 95
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Alter).
;; 96
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 97
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Ego, E), female(Alter).
;; 98
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Alter).
;; 99
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Alter).
;; 100
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Ego, E), female(Alter).
;; 101
%parameo:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoSoSoSoWi}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), father(E, D), parent(Ego, E), female(Alter).


parami(Alter, Ego) :-  grandparent[aux]512(Ego, Alter), male(Alter).
{"BroDaDaDaHu_BroDaDaDaSo_BroDaDaHu_BroDaDaSo_BroDaDaSoSo_BroDaSo_BroDaSoDaHu_BroDaSoDaSo_BroDaSoSo_BroDaSoSoSo_BroSoDaDaHu_BroSoDaDaSo_BroSoDaHu_BroSoDaSo_BroSoDaSoSo_BroSoSo_BroSoSoDaHu_BroSoSoDaSo_BroSoSoSo_BroSoSoSoSo_DaDaDaDaDaHu_DaDaDaDaHu_DaDaDaDaSo_DaDaDaHu_DaDaDaSo_DaDaDaSoDaHu_DaDaDaSoSo_DaDaHu_DaDaSo_DaDaSoDaDaHu_DaDaSoDaHu_DaDaSoDaSo_DaDaSoSo_DaDaSoSoDaHu_DaDaSoSoSo_DaSo_DaSoDaDaDaHu_DaSoDaDaHu_DaSoDaDaSo_DaSoDaHu_DaSoDaSo_DaSoDaSoDaHu_DaSoDaSoSo_DaSoSo_DaSoSoDaDaHu_DaSoSoDaHu_DaSoSoDaSo_DaSoSoSo_DaSoSoSoDaHu_DaSoSoSoSo_DaStso_SisDaDaDaHu_SisDaDaDaSo_SisDaDaHu_SisDaDaSo_SisDaDaSoSo_SisDaSo_SisDaSoDaHu_SisDaSoDaSo_SisDaSoSo_SisDaSoSoSo_SisSoDaDaHu_SisSoDaDaSo_SisSoDaHu_SisSoDaSo_SisSoDaSoSo_SisSoSo_SisSoSoDaHu_SisSoSoDaSo_SisSoSoSo_SisSoSoSoSo_SoDaDaDaDaHu_SoDaDaDaHu_SoDaDaDaSo_SoDaDaHu_SoDaDaSo_SoDaDaSoDaHu_SoDaDaSoSo_SoDaHu_SoDaSo_SoDaSoDaDaHu_SoDaSoDaHu_SoDaSoDaSo_SoDaSoSo_SoDaSoSoDaHu_SoDaSoSoSo_SoSo_SoSoDaDaDaHu_SoSoDaDaHu_SoSoDaDaSo_SoSoDaHu_SoSoDaSo_SoSoDaSoDaHu_SoSoDaSoSo_SoSoSo_SoSoSoDaDaHu_SoSoSoDaHu_SoSoSoDaSo_SoSoSoSo_SoSoSoSoDaHu_SoSoSoSoSo_SoStso"}
;; 0
%parami:0, grandparent[aux]512:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), parent(Ego, A), male(Alter).
;; 1
%parami:0, grandparent[aux]512:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), parent(Ego, A), male(Alter).
;; 2
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Alter).
;; 3
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), male(Alter).
;; 4
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 5
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 6
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 7
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 8
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 9
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 10
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 11
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 12
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 13
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 14
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 15
%parami:0, grandparent[aux]512:1, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 16
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Alter).
;; 17
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), male(Alter).
;; 18
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 19
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 20
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 21
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 22
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 23
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 24
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 25
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 26
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 27
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 28
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 29
%parami:0, grandparent[aux]512:1, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 30
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Alter).
;; 31
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), male(Alter).
;; 32
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 33
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 34
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 35
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 36
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 37
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 38
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 39
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 40
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 41
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 42
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 43
%parami:0, grandparent[aux]512:1, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 44
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Alter).
;; 45
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), male(Alter).
;; 46
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 47
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 48
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 49
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 50
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 51
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 52
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 53
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 54
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 55
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 56
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 57
%parami:0, grandparent[aux]512:1, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 58
%parami:0, grandparent[aux]512:2, step_father:0%
 Lvl=-2,  PC=3, S=1, Star=0,  {SoStso}  
[ext],  father(A, Alter), mother(B, Alter), husband(C, B), not(equal(C, A)), parent(Ego, C), male(Alter).
;; 59
%parami:0, grandparent[aux]512:3, step_mother:0%
 Lvl=-2,  PC=3, S=1, Star=0,  {DaStso}  
[ext],  father(A, Alter), mother(B, Alter), wife(C, A), not(equal(C, B)), parent(Ego, C), male(Alter).
;; 60
%parami:0, grandparent[aux]512:4, parents:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), parent(Ego, B), male(Alter).
;; 61
%parami:0, grandparent[aux]512:4, parents:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
[ext],  spouse(A, Alter), father(B, A), parent(Ego, B), male(Alter).
;; 62
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 63
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 64
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 65
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 66
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 67
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 68
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 69
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 70
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 71
%parami:0, grandparent[aux]512:5, parents:0, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoDaDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), mother(C, B), father(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 72
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 73
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 74
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 75
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 76
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 77
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 78
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 79
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 80
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 81
%parami:0, grandparent[aux]512:5, parents:0, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoSoDaDaHu}  
[ext],  spouse(A, Alter), mother(B, A), father(C, B), father(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 82
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 83
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {DaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Alter).
;; 84
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 85
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 86
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 87
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 88
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 89
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 90
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 91
%parami:0, grandparent[aux]512:5, parents:1, parents:0, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoDaSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), mother(C, B), father(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 92
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 93
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:1%
 Lvl=-3,  PC=3, S=1, Star=0,  {SoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Alter).
;; 94
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {SisSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 95
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {DaSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Alter).
;; 96
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaDaSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 97
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoDaSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, D), parent(Ego, E), male(Alter).
;; 98
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Alter).
;; 99
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-4,  PC=4, S=1, Star=0,  {SoSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Alter).
;; 100
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {DaSoSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), parent(Ego, E), male(Alter).
;; 101
%parami:0, grandparent[aux]512:5, parents:1, parents:1, square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=-5,  PC=5, S=1, Star=0,  {SoSoSoSoDaHu}  
[ext],  spouse(A, Alter), father(B, A), father(C, B), father(D, C), father(E, D), parent(Ego, E), male(Alter).


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


parumaco(Alter, Ego) :-  female(Ego), sibling(A, Ego), father(A, Alter), female(Alter).
                     |  [ext],  female(Ego), father(A, Ego), sibling(B, A), mother(B, C), father(C, Alter), female(Alter).
                     |  [ext],  female(Ego), mother(A, Ego), sibling(A, B), father(B, C), father(C, Alter), female(Alter).
{"BroDa_FaSisSoDa_MoBroSoDa"}
;; 0
%parumaco:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), father(C, Alter), female(Alter).
;; 1
%parumaco:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), mother(D, E), father(E, Alter), female(Alter).
;; 2
%parumaco:2, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), father(C, E), father(E, Alter), female(Alter).


parumacu(Alter, Ego) :-  female(Ego), sibling(A, Ego), father(A, Alter), male(Alter).
                     |  [ext],  female(Ego), father(A, Ego), sibling(B, A), mother(B, C), father(C, Alter), male(Alter).
                     |  [ext],  female(Ego), mother(A, Ego), sibling(A, B), father(B, C), father(C, Alter), male(Alter).
{"BroSo_FaSisSoSo_MoBroSoSo"}
;; 0
%parumacu:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), father(C, Alter), male(Alter).
;; 1
%parumacu:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), mother(D, E), father(E, Alter), male(Alter).
;; 2
%parumacu:2, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), father(C, E), father(E, Alter), male(Alter).


pe_nu(Alter, Ego) :-  wife(A, Ego), gen[aux]51Agnatic(Alter, A), male(Alter).
                  |   male(Ego), gen[aux]51Agnatic(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaBroSoSo"}
;; 0
%pe_nu:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%pe_nu:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 2
%pe_nu:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), male(G), child(Alter, G), male(Alter).
;; 3
%pe_nu:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C).
;; 4
%pe_nu:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), husband(Alter, E).
;; 5
%pe_nu:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), child(G, F), husband(Alter, G).


pe_su(Alter, Ego) :-  gender(A, Ego), spouse(B, Ego), gen[aux]51Agnatic(C, B), spouse(Alter, C), gender(A, Alter).
{"HuBroWi_HuFaBroSoWi_HuFaFaBroSoSoWi_WiFaBroDaHu_WiFaFaBroSoDaHu_WiSisHu"}
;; 0
%pe_su:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiSisHu}  
 male(Ego), gender(A, Ego), spouse(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), gender(A, Alter).
;; 1
%pe_su:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {WiFaBroDaHu}  
[ext],  male(Ego), gender(A, Ego), spouse(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), spouse(Alter, G), gender(A, Alter).
;; 2
%pe_su:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {WiFaFaBroSoDaHu}  
[ext], [ext],  male(Ego), gender(A, Ego), spouse(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), male(H), child(I, H), spouse(Alter, I), gender(A, Alter).
;; 3
%pe_su:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 female(Ego), gender(A, Ego), spouse(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), spouse(Alter, E), gender(A, Alter).
;; 4
%pe_su:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=2, Star=0,  {HuFaBroSoWi}  
[ext],  female(Ego), gender(A, Ego), spouse(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), spouse(Alter, G), gender(A, Alter).
;; 5
%pe_su:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=2, Star=0,  {HuFaFaBroSoSoWi}  
[ext], [ext],  female(Ego), gender(A, Ego), spouse(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(H, G), male(H), child(I, H), spouse(Alter, I), gender(A, Alter).


sib_mate(Alter, Ego) :-  *sib(A, Ego), *sib(A, Alter), not(equal(Ego, Alter)).
;; 0
%sib_mate:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 *sib(A, Ego), *sib(A, Alter), not(equal(Ego, Alter)).


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


sio(Alter, Ego) :-  husband(A, Ego), gen[aux]51Agnatic(Alter, A), female(Alter).
                |   female(Ego), gen[aux]51Agnatic(A, Ego), wife(Alter, A).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_HuFaBroDa_HuFaFaBroSoDa_HuSis"}
;; 0
%sio:0, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%sio:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 2
%sio:0, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
[ext], [ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), male(G), child(Alter, G), female(Alter).
;; 3
%sio:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C).
;; 4
%sio:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), wife(Alter, E).
;; 5
%sio:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:1, gen[aux]51Agnatic:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), male(F), child(G, F), wife(Alter, G).


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


square[aux]51(Alter, Ego) :-  generation[aux]51(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]51(Alter, A).
;; 0
%square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 86
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 87
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 88
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 89
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 90
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 91
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 92
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 93
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 94
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 95
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 96
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 97
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 98
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 99
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 100
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 101
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 102
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 103
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 104
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 105
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 106
%square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 107
%square[aux]51:2, parents:0, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 108
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 109
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 110
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 111
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 112
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 113
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 114
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 116
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 118
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 120
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 121
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 122
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 123
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 124
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 126
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 128
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]51:2, parents:0, square[aux]51:2, parents:0, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 130
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 131
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 132
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 133
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 134
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 135
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 136
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 137
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 138
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 139
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 140
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 141
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 142
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 143
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 144
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 145
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 146
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 147
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 148
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 149
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 150
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 151
%square[aux]51:2, parents:0, square[aux]51:2, parents:1, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 152
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 153
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 154
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 155
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 156
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 157
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 158
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 159
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 164
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 165
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 166
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 168
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 169
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]51:2, parents:1, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 174
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 175
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 176
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 177
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 178
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 179
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 180
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 181
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 182
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 183
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 184
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 185
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 186
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 187
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 188
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 189
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 190
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 191
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 192
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 193
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 194
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 195
%square[aux]51:2, parents:1, square[aux]51:2, parents:0, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 196
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 197
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 198
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 199
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 200
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 201
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 202
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 203
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 204
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 205
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 206
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:0, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 208
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 209
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:0, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 214
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 215
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 216
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:0, generation[aux]51:1, parents:1, generation[aux]51gs:1, parents:1, generation[aux]51gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]51:2, parents:1, square[aux]51:2, parents:1, square[aux]51:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), parent(Alter, B).


square[aux]51small(Alter, Ego) :-  sibling(Alter, Ego).
                               |   parent(Alter, Ego).
                               |   parents(A, Ego), square[aux]51small(Alter, A).
;; 0
%square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 2
%square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 3
%square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 4
%square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 5
%square[aux]51small:2, parents:0, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 6
%square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 7
%square[aux]51small:2, parents:0, square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 8
%square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 9
%square[aux]51small:2, parents:1, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 10
%square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 11
%square[aux]51small:2, parents:1, square[aux]51small:2, parents:0, square[aux]51small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 12
%square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 13
%square[aux]51small:2, parents:1, square[aux]51small:2, parents:1, square[aux]51small:1%
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


wameo(Alter, Ego) :-  father(A, Ego), sibling(Alter, A), female(Alter).
                  |  [ext],  father(A, Ego), father(B, A), sibling(B, C), male(C), daughter(Alter, C).
                  |  [ext],  father(A, Ego), mother(B, A), sibling(B, C), female(C), daughter(Alter, C).
{"FaFaBroDa_FaMoSisDa_FaSis"}
;; 0
%wameo:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%wameo:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(D), daughter(Alter, D).
;; 2
%wameo:2, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(D), daughter(Alter, D).


yu_u_maco_numo(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
{"SoWi"}
;; 0
%yu_u_maco_numo:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).

