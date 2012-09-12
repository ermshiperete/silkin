;;  Horn Clause Representation of Paumari Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Paumari") (author, "Mary Ann Odmark and Rachel Landin") (date, "1985-01-01") (citation, "Mary Ann Odmark and Rachel Landin in SOUTH AMERICAN KINSHIP pp. 93-111") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 1)
(overlaps, (aajo, (kajo_o)), (adia, (kajo_o)), (kajo_o, (aajo, adia)))
(umbrellas, (igami, (aajo, adia, kajo_o)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

aajo(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                 |   even_gen[aux]43(Alter, Ego), male(Alter), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaSisDaSo_FaMoBroDaSo_MoFaSisSoSo_MoMoBroSoSo_MoSisSo"}
;; 0
%aajo:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%aajo:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 2
%aajo:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter), elder(Alter, Ego).
;; 3
%aajo:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter), elder(Alter, Ego).
;; 4
%aajo:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), elder(Alter, Ego).
;; 5
%aajo:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), elder(Alter, Ego).
;; 6
%aajo:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), elder(Alter, Ego).
;; 7
%aajo:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), elder(Alter, Ego).


aaso(Alter, Ego) :-  cross_up1[aux]43(Alter, Ego), female(Alter).
{"FaFaSisDa_FaMoBroDa_MoFaSisDa_MoMoBroDa"}
;; 0
%aaso:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 1
%aaso:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 2
%aaso:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 3
%aaso:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).


abdoni(Alter, Ego) :-  children(A, Ego), spouse(Alter, A).
{"DaHu_SoWi"}
;; 0
%abdoni:0, children:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), spouse(Alter, A).
;; 1
%abdoni:0, children:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), spouse(Alter, A).


abi_i(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%abi_i:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


adia(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                 |   even_gen[aux]43(Alter, Ego), female(Alter), elder(Alter, Ego).
{"FaBroDa_FaFaSisDaDa_FaMoBroDaDa_MoFaSisSoDa_MoMoBroSoDa_MoSisDa_Sis"}
;; 0
%adia:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%adia:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 2
%adia:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter), elder(Alter, Ego).
;; 3
%adia:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter), elder(Alter, Ego).
;; 4
%adia:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), elder(Alter, Ego).
;; 5
%adia:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), elder(Alter, Ego).
;; 6
%adia:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), elder(Alter, Ego).
;; 7
%adia:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), elder(Alter, Ego).


amia(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%amia:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


anadiava(Alter, Ego) :-  sibling_in_law[aux]43(Alter, Ego), male(Ego), female(Alter).
{"BroWi_FaBroSoWi_MoSisSoWi_WiFaBroDa_WiMoSisDa_WiSis"}
;; 0
%anadiava:0, sibling_in_law[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Ego), female(Alter).
;; 1
%anadiava:0, sibling_in_law[aux]43:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Ego), female(Alter).
;; 2
%anadiava:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
 spouse(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Ego), female(Alter).
;; 3
%anadiava:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
 spouse(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Ego), female(Alter).
;; 4
%anadiava:0, sibling_in_law[aux]43:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), male(Ego), female(Alter).
;; 5
%anadiava:0, sibling_in_law[aux]43:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), male(Ego), female(Alter).
;; 6
%anadiava:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), male(Ego), female(Alter).
;; 7
%anadiava:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), male(Ego), female(Alter).


ananini(Alter, Ego) :-  sibling_in_law[aux]43(Alter, Ego), female(Ego), female(Alter).
{"BroWi_FaBroSoWi_HuFaBroDa_HuMoSisDa_HuSis_MoSisSoWi"}
;; 0
%ananini:0, sibling_in_law[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Ego), female(Alter).
;; 1
%ananini:0, sibling_in_law[aux]43:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Ego), female(Alter).
;; 2
%ananini:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
 spouse(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Ego), female(Alter).
;; 3
%ananini:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
 spouse(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Ego), female(Alter).
;; 4
%ananini:0, sibling_in_law[aux]43:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), female(Ego), female(Alter).
;; 5
%ananini:0, sibling_in_law[aux]43:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), female(Ego), female(Alter).
;; 6
%ananini:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), female(Ego), female(Alter).
;; 7
%ananini:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), female(Ego), female(Alter).


arahoda(Alter, Ego) :-  grandparent[aux]43(Alter, Ego), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBroSo_FaFaFaFaSisSo_FaFaFaMoBroSo_FaFaFaMoSisSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoFa_FaFaMoFaBroSo_FaFaMoFaSisSo_FaFaMoMoBroSo_FaFaMoMoSisSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBroSo_FaMoFaFaSisSo_FaMoFaMoBroSo_FaMoFaMoSisSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroSo_FaMoMoFa_FaMoMoFaBroSo_FaMoMoFaSisSo_FaMoMoMoBroSo_FaMoMoMoSisSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBroSo_MoFaFaFaSisSo_MoFaFaMoBroSo_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoFa_MoFaMoFaBroSo_MoFaMoFaSisSo_MoFaMoMoBroSo_MoFaMoMoSisSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBroSo_MoMoFaFaSisSo_MoMoFaMoBroSo_MoMoFaMoSisSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroSo_MoMoMoFa_MoMoMoFaBroSo_MoMoMoFaSisSo_MoMoMoMoBroSo_MoMoMoMoSisSo_MoMoMoSisSo"}
;; 0
%arahoda:0, grandparent[aux]43:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%arahoda:0, grandparent[aux]43:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 4
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 5
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 6
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 7
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 8
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 10
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 11
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 12
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 13
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 14
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 15
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 16
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 17
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 18
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 19
%arahoda:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 20
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 21
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 22
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 23
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 24
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 25
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 26
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 28
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 29
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 30
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 31
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 32
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 33
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 34
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 35
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 36
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 37
%arahoda:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 38
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 39
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 40
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 41
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 42
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 43
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 44
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 45
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 46
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 47
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 50
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 51
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 52
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 53
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 54
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 55
%arahoda:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 56
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 57
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 58
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 59
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 60
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 61
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 62
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 63
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 64
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 65
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 66
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 67
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 68
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 69
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 70
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 71
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 72
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 73
%arahoda:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).


arahoni(Alter, Ego) :-  grandparent[aux]43(Alter, Ego), female(Alter).
{"FaFaFaBroDa_FaFaFaFaBroDa_FaFaFaFaSisDa_FaFaFaMo_FaFaFaMoBroDa_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoFaBroDa_FaFaMoFaSisDa_FaFaMoMo_FaFaMoMoBroDa_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaFaBroDa_FaMoFaFaSisDa_FaMoFaMo_FaMoFaMoBroDa_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoFaBroDa_FaMoMoFaSisDa_FaMoMoMo_FaMoMoMoBroDa_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaFaBroDa_MoFaFaFaSisDa_MoFaFaMo_MoFaFaMoBroDa_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoFaBroDa_MoFaMoFaSisDa_MoFaMoMo_MoFaMoMoBroDa_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroDa_MoMoFaFaSisDa_MoMoFaMo_MoMoFaMoBroDa_MoMoFaMoSisDa_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoBroDa_MoMoMoFaBroDa_MoMoMoFaSisDa_MoMoMoMo_MoMoMoMoBroDa_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%arahoni:0, grandparent[aux]43:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%arahoni:0, grandparent[aux]43:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 4
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 5
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 6
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 7
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 8
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 9
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 10
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 11
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 12
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 13
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 14
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 15
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 16
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 17
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 18
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 19
%arahoni:0, grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 20
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 21
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 22
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 23
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 24
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 25
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 26
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 27
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 28
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 29
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 30
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 31
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 32
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 33
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 34
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 35
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 36
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 37
%arahoni:0, grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 38
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 39
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 40
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 41
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 42
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 43
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 44
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 45
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 46
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 47
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 48
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 49
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 50
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 51
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 52
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 53
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 54
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 55
%arahoni:0, grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 56
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 57
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 58
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 59
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 60
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 61
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 62
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 63
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 64
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 65
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 66
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 67
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 68
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 69
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 70
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 71
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 72
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 73
%arahoni:0, grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).


badava(Alter, Ego) :-  para_dn1[aux]43(Alter, Ego), male(Alter).
{"BroSo_BroStso_FaBroDaSo_FaBroSoSo_MoSisDaSo_MoSisSoSo_SisSo_SisStso_Stso"}
;; 0
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Alter).
;; 1
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), male(Alter).
;; 2
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), male(Alter).
;; 3
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Alter).
;; 4
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), male(Alter).
;; 5
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), male(Alter).
;; 6
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:1%
 Lvl=-1,  PC=2, S=1, Star=0,  {Stso}  
 parent(A, Alter), parent(B, Alter), spouse(Ego, A), not(equal(B, A)), not(equal(B, Ego)), male(Alter).
;; 7
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=6, S=1, Star=0,  {BroStso}  
 mother(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).
;; 8
%badava:0, para_dn1[aux]43:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=6, S=1, Star=0,  {SisStso}  
 father(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Alter).


badia(Alter, Ego) :-  para_up1[aux]43(Alter, Ego), male(Alter).
{"FaBro_FaFaBroSo_FaMoSisSo_MoBro_MoFaBroSo_MoMoSisSo_Stfa_StfaBro_StfaFaBroSo_StfaMoSisSo_StmoBro_StmoFaBroSo_StmoMoSisSo"}
;; 0
%badia:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%badia:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 2
%badia:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 3
%badia:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 4
%badia:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 5
%badia:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 6
%badia:0, para_up1[aux]43:1%
 Lvl=1,  PC=2, S=1, Star=0,  {Stfa}  
 parent(A, Ego), parent(B, Ego), spouse(Alter, A), not(equal(B, A)), not(equal(B, Alter)), male(Alter).
;; 7
%badia:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=6, S=1, Star=0,  {StfaBro}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 8
%badia:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StfaMoSisSo}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), male(Alter).
;; 9
%badia:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StfaFaBroSo}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), male(Alter).
;; 10
%badia:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=6, S=1, Star=0,  {StmoBro}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 11
%badia:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StmoMoSisSo}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), male(Alter).
;; 12
%badia:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StmoFaBroSo}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), male(Alter).


badnava(Alter, Ego) :-  para_dn1[aux]43(Alter, Ego), female(Alter).
{"BroDa_BroStda_FaBroDaDa_FaBroSoDa_MoSisDaDa_MoSisSoDa_SisDa_SisStda_Stda"}
;; 0
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Alter).
;; 1
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), female(Alter).
;; 2
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), female(Alter).
;; 3
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Alter).
;; 4
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), female(Alter).
;; 5
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D), female(Alter).
;; 6
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:1%
 Lvl=-1,  PC=2, S=1, Star=0,  {Stda}  
 parent(A, Alter), parent(B, Alter), spouse(Ego, A), not(equal(B, A)), not(equal(B, Ego)), female(Alter).
;; 7
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=6, S=1, Star=0,  {BroStda}  
 mother(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).
;; 8
%badnava:0, para_dn1[aux]43:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=6, S=1, Star=0,  {SisStda}  
 father(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Alter).


bihadi(Alter, Ego) :-  male(Ego), cross_dn1[aux]43(Alter, Ego), male(Alter).
                   |   male(Ego), cross_dn1[aux]43(Alter, Ego), female(Alter).
{"FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo"}
;; 0
%bihadi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 male(Ego), mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 1
%bihadi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 male(Ego), mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 2
%bihadi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 3
%bihadi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 4
%bihadi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 male(Ego), mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 5
%bihadi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 male(Ego), mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 6
%bihadi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 7
%bihadi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).


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


cross_cousin[aux]43(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(C, A), gender(D, C), child(Alter, C), not(equal(B, D)).
                                |   parents(A, Ego), gender(B, A), cross_cousin[aux]43(C, A), gender(B, C), child(Alter, C).
                                |   parents(A, Ego), gender(B, A), parents(C, A), gender(D, C), sibling(C, E), gender(D, E), child(F, E), gender(G, F), child(Alter, F), not(equal(B, G)).
;; 0
%cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)).
;; 1
%cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)).
;; 2
%cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I).
;; 3
%cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I).
;; 4
%cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I).
;; 5
%cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I).
;; 6
%cross_cousin[aux]43:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)).
;; 7
%cross_cousin[aux]43:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)).
;; 8
%cross_cousin[aux]43:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)).
;; 9
%cross_cousin[aux]43:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)).


cross_dn1[aux]43(Alter, Ego) :-  cross_up1[aux]43(Ego, Alter).
;; 0
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 1
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 2
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), parent(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), son(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 3
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), parent(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), daughter(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 4
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), parent(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), son(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 5
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), parent(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), daughter(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 6
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 7
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 8
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), parent(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), son(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 9
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), parent(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), daughter(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 10
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), parent(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), son(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).
;; 11
%cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), parent(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), daughter(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(J, D).


cross_up1[aux]43(Alter, Ego) :-  parents(A, Ego), odd_gen[aux]43(Alter, A).
;; 0
%cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 1
%cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 2
%cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 3
%cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).


even_gen[aux]43(Alter, Ego) :-  sibling(Alter, Ego).
                            |   parents(A, Ego), even_gen[aux]43(A, B), child(Alter, B), gender(C, A), gender(C, B).
                            |   parents(A, Ego), odd_gen[aux]43(A, B), child(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C).
;; 2
%even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C).
;; 3
%even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 4
%even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 5
%even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 6
%even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).


gamo(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%gamo:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


generation[aux]43(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]43gs(B, A), child(Alter, B).
;; 0
%generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


generation[aux]43gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]43gs(B, A), children(Alter, B).
;; 0
%generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


grandparent[aux]43(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                               |  [ext],  parents(A, Ego), parents(B, A), square[aux]43(Alter, B).
;; 0
%grandparent[aux]43:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]43:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 3
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 4
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 5
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 6
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 7
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 8
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 9
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 10
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 11
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 12
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 13
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 14
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 15
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 16
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 17
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 18
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 19
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 20
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 21
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 22
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 23
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B).
;; 24
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 25
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 26
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 27
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 28
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 29
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 30
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 31
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 32
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 33
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 34
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 35
%grandparent[aux]43:1, parents:0, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 36
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 37
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 38
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 39
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 40
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 41
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 42
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 43
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 44
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 45
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 46
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 47
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 48
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 49
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 50
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 51
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 52
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 53
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 54
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 55
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 56
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 57
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B).
;; 58
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 59
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 60
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 61
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 62
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 63
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 64
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 65
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 66
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 67
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 68
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 69
%grandparent[aux]43:1, parents:0, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), parent(Alter, C).
;; 70
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 71
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 72
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 73
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 74
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 75
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 76
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 77
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 78
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 79
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 80
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 81
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 82
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 83
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 84
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 85
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 86
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 87
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 88
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 89
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 90
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 91
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B).
;; 92
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 93
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 94
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 95
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 96
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 97
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C).
;; 98
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 99
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 100
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 101
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 102
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 103
%grandparent[aux]43:1, parents:1, parents:0, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), parent(Alter, C).
;; 104
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 105
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 106
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 107
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 108
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 109
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 110
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 111
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 112
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 113
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 114
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 115
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 116
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 117
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 118
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 119
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 120
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 121
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 122
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 123
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 124
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 125
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B).
;; 126
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 127
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 128
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 129
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 130
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 131
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), parent(Alter, C).
;; 132
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 133
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 134
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 135
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 136
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 137
%grandparent[aux]43:1, parents:1, parents:1, square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), parent(Alter, C).


hadi(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
{"HuFa_WiFa"}
;; 0
%hadi:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%hadi:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


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


hanodi(Alter, Ego) :-  children(A, Ego), children(Alter, A).
                   |   square[aux]43dn_gs(A, Ego), children(B, A), children(Alter, B).
{"BroDaDa_BroDaDaDa_BroDaDaSo_BroDaSo_BroDaSoDa_BroDaSoSo_BroSoDa_BroSoDaDa_BroSoDaSo_BroSoSo_BroSoSoDa_BroSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaSo_DaDaSo_DaDaSoDa_DaDaSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaSo_DaSoSo_DaSoSoDa_DaSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaSo_SisDaSo_SisDaSoDa_SisDaSoSo_SisSoDa_SisSoDaDa_SisSoDaSo_SisSoSo_SisSoSoDa_SisSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaSo_SoDaSo_SoDaSoDa_SoDaSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaSo_SoSoSo_SoSoSoDa_SoSoSoSo"}
;; 0
%hanodi:0, children:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%hanodi:0, children:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%hanodi:0, children:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 3
%hanodi:0, children:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 4
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 5
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 6
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 7
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 8
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 9
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 10
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 11
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 12
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 13
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 14
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 15
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 16
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 17
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 18
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 19
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 20
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 21
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 22
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 23
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 24
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 25
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 26
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 27
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 28
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(Alter, F).
;; 29
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(Alter, F).
;; 30
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(Alter, F).
;; 31
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 32
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(Alter, F).
;; 33
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 34
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 35
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 36
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(Alter, F).
;; 37
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(Alter, F).
;; 38
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(Alter, F).
;; 39
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(Alter, F).
;; 40
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(Alter, F).
;; 41
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(Alter, F).
;; 42
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(Alter, F).
;; 43
%hanodi:1, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(Alter, F).
;; 44
%hanodi:1, square[aux]43dn_gs:1, children:0, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 son(A, Ego), son(B, A), son(Alter, B).
;; 45
%hanodi:1, square[aux]43dn_gs:1, children:0, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 son(A, Ego), son(B, A), daughter(Alter, B).
;; 46
%hanodi:1, square[aux]43dn_gs:1, children:0, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 son(A, Ego), daughter(B, A), son(Alter, B).
;; 47
%hanodi:1, square[aux]43dn_gs:1, children:0, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 48
%hanodi:1, square[aux]43dn_gs:1, children:1, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 daughter(A, Ego), son(B, A), son(Alter, B).
;; 49
%hanodi:1, square[aux]43dn_gs:1, children:1, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 50
%hanodi:1, square[aux]43dn_gs:1, children:1, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 51
%hanodi:1, square[aux]43dn_gs:1, children:1, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 52
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), son(Alter, E).
;; 53
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(E, D), daughter(Alter, E).
;; 54
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), son(Alter, E).
;; 55
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 56
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), son(Alter, E).
;; 57
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 58
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 59
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 60
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), son(Alter, E).
;; 61
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(E, D), daughter(Alter, E).
;; 62
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), son(Alter, E).
;; 63
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(E, D), daughter(Alter, E).
;; 64
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), son(Alter, E).
;; 65
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(E, D), daughter(Alter, E).
;; 66
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), son(Alter, E).
;; 67
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(E, D), daughter(Alter, E).
;; 68
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 69
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 70
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 71
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 72
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 73
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 74
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 75
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 76
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 77
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 78
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 79
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 80
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 81
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 82
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 83
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 84
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 85
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 86
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 87
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 88
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 89
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 90
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 91
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 92
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 93
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 94
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 95
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 96
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 97
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 98
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 99
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 100
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 101
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 102
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 103
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 104
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 105
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 106
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 107
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 108
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 109
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 110
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 111
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 112
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 113
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 114
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 115
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 116
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), son(Alter, G).
;; 117
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 118
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 119
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 120
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 121
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 122
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 123
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 124
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), son(Alter, G).
;; 125
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), son(G, F), daughter(Alter, G).
;; 126
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), son(Alter, G).
;; 127
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), daughter(G, F), daughter(Alter, G).
;; 128
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), son(Alter, G).
;; 129
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), son(G, F), daughter(Alter, G).
;; 130
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), son(Alter, G).
;; 131
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), daughter(G, F), daughter(Alter, G).
;; 132
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 son(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 133
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 son(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 134
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 son(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 135
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 son(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 136
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 son(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 137
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 son(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 138
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 son(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 139
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 son(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).
;; 140
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:0, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 daughter(A, Ego), son(B, A), son(C, B), son(Alter, C).
;; 141
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:0, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 daughter(A, Ego), son(B, A), son(C, B), daughter(Alter, C).
;; 142
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:0, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 daughter(A, Ego), son(B, A), daughter(C, B), son(Alter, C).
;; 143
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:0, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 daughter(A, Ego), son(B, A), daughter(C, B), daughter(Alter, C).
;; 144
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:1, children:0, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 daughter(A, Ego), daughter(B, A), son(C, B), son(Alter, C).
;; 145
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:1, children:0, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 daughter(A, Ego), daughter(B, A), son(C, B), daughter(Alter, C).
;; 146
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:1, children:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), son(Alter, C).
;; 147
%hanodi:1, square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:1, children:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 daughter(A, Ego), daughter(B, A), daughter(C, B), daughter(Alter, C).


igami(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
                  |   sibling(Alter, Ego), female(Alter).
                  |   even_gen[aux]43(Alter, Ego), male(Alter).
                  |   even_gen[aux]43(Alter, Ego), female(Alter).
{"Bro_FaBroDa_FaBroSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%igami:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%igami:1, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%igami:2, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 3
%igami:2, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter).
;; 4
%igami:2, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter).
;; 5
%igami:2, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 6
%igami:2, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 7
%igami:2, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 8
%igami:2, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 9
%igami:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 10
%igami:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter).
;; 11
%igami:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter).
;; 12
%igami:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 13
%igami:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 14
%igami:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 15
%igami:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).


ijimaro(Alter, Ego) :-  cross_cousin[aux]43(Alter, Ego), female(Alter).
{"FaFaBroDaDa_FaFaSisSoDa_FaMoBroSoDa_FaMoSisDaDa_FaSisDa_MoBroDa_MoFaBroSoDa_MoFaSisDaDa_MoMoBroDaDa_MoMoSisSoDa"}
;; 0
%ijimaro:0, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)), female(Alter).
;; 1
%ijimaro:0, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)), female(Alter).
;; 2
%ijimaro:0, cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), female(Alter).
;; 3
%ijimaro:0, cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), female(Alter).
;; 4
%ijimaro:0, cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), female(Alter).
;; 5
%ijimaro:0, cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), female(Alter).
;; 6
%ijimaro:0, cross_cousin[aux]43:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), female(Alter).
;; 7
%ijimaro:0, cross_cousin[aux]43:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), female(Alter).
;; 8
%ijimaro:0, cross_cousin[aux]43:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), female(Alter).
;; 9
%ijimaro:0, cross_cousin[aux]43:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), female(Alter).


isai(Alter, Ego) :-  children(Alter, Ego).
{"Da_So"}
;; 0
%isai:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%isai:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).


javi(Alter, Ego) :-  cross_cousin[aux]43(Alter, Ego), male(Alter).
{"FaFaBroDaSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisDaSo_FaSisSo_MoBroSo_MoFaBroSoSo_MoFaSisDaSo_MoMoBroDaSo_MoMoSisSoSo"}
;; 0
%javi:0, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)), male(Alter).
;; 1
%javi:0, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), gender(B, A), mother(C, A), father(D, A), child(E, C), child(E, D), not(equal(E, A)), gender(F, E), child(Alter, E), not(equal(B, F)), male(Alter).
;; 2
%javi:0, cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), male(Alter).
;; 3
%javi:0, cross_cousin[aux]43:1, parents:0, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), male(Alter).
;; 4
%javi:0, cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), male(Alter).
;; 5
%javi:0, cross_cousin[aux]43:1, parents:1, cross_cousin[aux]43:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), gender(H, G), child(I, G), not(equal(D, H)), gender(B, I), child(Alter, I), male(Alter).
;; 6
%javi:0, cross_cousin[aux]43:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), male(Alter).
;; 7
%javi:0, cross_cousin[aux]43:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), male(Alter).
;; 8
%javi:0, cross_cousin[aux]43:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), gender(B, A), mother(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), male(Alter).
;; 9
%javi:0, cross_cousin[aux]43:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), gender(B, A), father(C, A), gender(D, C), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), gender(D, F), child(H, F), gender(I, H), child(Alter, H), not(equal(B, I)), male(Alter).


kajo_o(Alter, Ego) :-  igami(Alter, Ego), younger(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoSisDa_MoSisSo_Sis"}
;; 0
%kajo_o:0, igami:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%kajo_o:0, igami:1, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 2
%kajo_o:0, igami:2, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 3
%kajo_o:0, igami:2, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter), younger(Alter, Ego).
;; 4
%kajo_o:0, igami:2, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), male(Alter), younger(Alter, Ego).
;; 5
%kajo_o:0, igami:2, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), younger(Alter, Ego).
;; 6
%kajo_o:0, igami:2, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), younger(Alter, Ego).
;; 7
%kajo_o:0, igami:2, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), younger(Alter, Ego).
;; 8
%kajo_o:0, igami:2, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter), younger(Alter, Ego).
;; 9
%kajo_o:0, igami:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 10
%kajo_o:0, igami:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter), younger(Alter, Ego).
;; 11
%kajo_o:0, igami:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(E, C), female(Alter), younger(Alter, Ego).
;; 12
%kajo_o:0, igami:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), younger(Alter, Ego).
;; 13
%kajo_o:0, igami:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), younger(Alter, Ego).
;; 14
%kajo_o:0, igami:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), younger(Alter, Ego).
;; 15
%kajo_o:0, igami:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter), younger(Alter, Ego).


koko(Alter, Ego) :-  cross_up1[aux]43(Alter, Ego), male(Alter).
{"FaFaSisSo_FaMoBroSo_MoFaSisSo_MoMoBroSo"}
;; 0
%koko:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 1
%koko:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 2
%koko:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 3
%koko:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).


madinava(Alter, Ego) :-  para_up1[aux]43(Alter, Ego), female(Alter).
{"FaFaBroDa_FaMoSisDa_FaSis_MoFaBroDa_MoMoSisDa_MoSis_StfaFaBroDa_StfaMoSisDa_StfaSis_Stmo_StmoFaBroDa_StmoMoSisDa_StmoSis"}
;; 0
%madinava:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%madinava:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 2
%madinava:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 3
%madinava:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 4
%madinava:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 5
%madinava:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 6
%madinava:0, para_up1[aux]43:1%
 Lvl=1,  PC=2, S=1, Star=0,  {Stmo}  
 parent(A, Ego), parent(B, Ego), spouse(Alter, A), not(equal(B, A)), not(equal(B, Alter)), female(Alter).
;; 7
%madinava:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=6, S=1, Star=0,  {StfaSis}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 8
%madinava:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StfaMoSisDa}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), female(Alter).
;; 9
%madinava:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StfaFaBroDa}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), female(Alter).
;; 10
%madinava:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=6, S=1, Star=0,  {StmoSis}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 11
%madinava:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StmoMoSisDa}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), female(Alter).
;; 12
%madinava:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=1,  PC=8, S=1, Star=0,  {StmoFaBroDa}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F), female(Alter).


makhidava(Alter, Ego) :-  sibling_in_law[aux]43(Alter, Ego), female(Ego), male(Alter).
{"FaBroDaHu_HuBro_HuFaBroSo_HuMoSisSo_MoSisDaHu_SisHu"}
;; 0
%makhidava:0, sibling_in_law[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Ego), male(Alter).
;; 1
%makhidava:0, sibling_in_law[aux]43:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Ego), male(Alter).
;; 2
%makhidava:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
 spouse(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Ego), male(Alter).
;; 3
%makhidava:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
 spouse(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), female(Ego), male(Alter).
;; 4
%makhidava:0, sibling_in_law[aux]43:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), female(Ego), male(Alter).
;; 5
%makhidava:0, sibling_in_law[aux]43:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), female(Ego), male(Alter).
;; 6
%makhidava:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), female(Ego), male(Alter).
;; 7
%makhidava:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), female(Ego), male(Alter).


makhononi(Alter, Ego) :-  female(Ego), cross_dn1[aux]43(Alter, Ego), male(Alter).
                      |   female(Ego), cross_dn1[aux]43(Alter, Ego), female(Alter).
{"FaSisDaDa_FaSisDaSo_FaSisSoDa_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoDa_MoBroSoSo"}
;; 0
%makhononi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 1
%makhononi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 2
%makhononi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 female(Ego), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 3
%makhononi:0, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 female(Ego), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), male(Alter).
;; 4
%makhononi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 5
%makhononi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 6
%makhononi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 female(Ego), father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).
;; 7
%makhononi:1, cross_dn1[aux]43:0, cross_up1[aux]43:0, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 female(Ego), father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(G, D), not(equal(F, G)), female(Alter).


makira(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%makira:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


masodini(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
{"HuMo_WiMo"}
;; 0
%masodini:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%masodini:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


odd_gen[aux]43(Alter, Ego) :-  parents(A, Ego), even_gen[aux]43(A, B), child(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                           |   parent(A, Ego), odd_gen[aux]43gs(A, B), child(Alter, B), gender(C, A), gender(C, B).
;; 0
%odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 1
%odd_gen[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), child(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 2
%odd_gen[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), child(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 3
%odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 4
%odd_gen[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), child(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 5
%odd_gen[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), child(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 6
%odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(I, C).
;; 7
%odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(I, C).
;; 8
%odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(I, C).
;; 9
%odd_gen[aux]43:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(Alter, C), gender(I, A), gender(I, C).


odd_gen[aux]43gs(Alter, Ego) :-  parents(A, Ego), even_gen[aux]43(A, B), children(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                             |   parent(A, Ego), odd_gen[aux]43gs(A, B), children(Alter, B), gender(C, A), gender(C, B).
;; 0
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), son(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 1
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), daughter(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 2
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), son(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 3
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), daughter(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 4
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), son(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 5
%odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), daughter(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 6
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), son(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 7
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), daughter(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 8
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), son(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 9
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), daughter(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 10
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), son(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 11
%odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(G, E), daughter(Alter, C), gender(H, A), gender(I, C), not(equal(H, I)).
;; 12
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), son(Alter, C), gender(I, A), gender(I, C).
;; 13
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), daughter(Alter, C), gender(I, A), gender(I, C).
;; 14
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), son(Alter, C), gender(I, A), gender(I, C).
;; 15
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:0, even_gen[aux]43:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), daughter(Alter, C), gender(I, A), gender(I, C).
;; 16
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), son(Alter, C), gender(I, A), gender(I, C).
;; 17
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), son(A, E), gender(G, B), gender(H, E), not(equal(G, H)), daughter(Alter, C), gender(I, A), gender(I, C).
;; 18
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), son(Alter, C), gender(I, A), gender(I, C).
;; 19
%odd_gen[aux]43gs:1, odd_gen[aux]43gs:0, parents:1, even_gen[aux]43:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), daughter(A, E), gender(G, B), gender(H, E), not(equal(G, H)), daughter(Alter, C), gender(I, A), gender(I, C).


para_dn1[aux]43(Alter, Ego) :-  para_up1[aux]43(Ego, Alter).
;; 0
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)).
;; 1
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D).
;; 2
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D).
;; 3
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), mother(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 4
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), mother(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 5
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), father(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 6
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:0, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), father(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 7
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)).
;; 8
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D).
;; 9
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Ego, D), gender(F, B), gender(F, D).
;; 10
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), mother(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 11
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), mother(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 12
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), father(B, A), mother(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 13
%para_dn1[aux]43:0, para_up1[aux]43:0, parents:1, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), father(B, A), father(C, D), mother(E, F), father(G, F), child(C, E), child(C, G), not(equal(C, F)), child(B, F), gender(H, C), gender(I, F), not(equal(H, I)), child(Ego, D), gender(J, B), gender(K, D), not(equal(J, K)).
;; 14
%para_dn1[aux]43:0, para_up1[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Alter), parent(B, Alter), spouse(Ego, A), not(equal(B, A)), not(equal(B, Ego)).
;; 15
%para_dn1[aux]43:0, para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)).
;; 16
%para_dn1[aux]43:0, para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Alter), parent(B, Alter), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)).


para_up1[aux]43(Alter, Ego) :-  parents(A, Ego), even_gen[aux]43(Alter, A).
                            |   parent(A, Ego), parent(B, Ego), spouse(Alter, A), not(equal(B, A)), not(equal(B, Alter)).
                            |   parents(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), even_gen[aux]43(Alter, C).
;; 0
%para_up1[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 1
%para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 2
%para_up1[aux]43:0, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 3
%para_up1[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 4
%para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 5
%para_up1[aux]43:0, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 6
%para_up1[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, Ego), spouse(Alter, A), not(equal(B, A)), not(equal(B, Alter)).
;; 7
%para_up1[aux]43:2, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 8
%para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F).
;; 9
%para_up1[aux]43:2, parents:0, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F).
;; 10
%para_up1[aux]43:2, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 11
%para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), mother(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F).
;; 12
%para_up1[aux]43:2, parents:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(B, Ego), spouse(C, A), not(equal(B, A)), not(equal(B, C)), father(D, C), mother(E, F), father(G, F), child(D, E), child(D, G), not(equal(D, F)), child(Alter, F), gender(H, D), gender(H, F).


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


sibling_in_law[aux]43(Alter, Ego) :-  spouse(A, Ego), sibling(Alter, A).
                                  |   spouse(A, Ego), even_gen[aux]43(Alter, A).
                                  |   sibling(A, Ego), spouse(Alter, A).
                                  |   even_gen[aux]43(A, Ego), spouse(Alter, A).
;; 0
%sibling_in_law[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 1
%sibling_in_law[aux]43:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 2
%sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 3
%sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 spouse(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D).
;; 4
%sibling_in_law[aux]43:2, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C).
;; 5
%sibling_in_law[aux]43:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C).
;; 6
%sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E).
;; 7
%sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E).
;; 8
%sibling_in_law[aux]43:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(I, C), gender(J, A), gender(K, C), not(equal(J, K)), spouse(Alter, I).
;; 9
%sibling_in_law[aux]43:3, even_gen[aux]43:2, parents:0, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(I, C), gender(J, A), gender(K, C), not(equal(J, K)), spouse(Alter, I).
;; 10
%sibling_in_law[aux]43:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(I, C), gender(J, A), gender(K, C), not(equal(J, K)), spouse(Alter, I).
;; 11
%sibling_in_law[aux]43:3, even_gen[aux]43:2, parents:1, odd_gen[aux]43:0, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), child(A, E), gender(G, B), gender(H, E), not(equal(G, H)), child(I, C), gender(J, A), gender(K, C), not(equal(J, K)), spouse(Alter, I).


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


square[aux]43(Alter, Ego) :-  generation[aux]43(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]43(Alter, A).
;; 0
%square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 21
%square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 22
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 23
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 24
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 25
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 26
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 27
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 28
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 29
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 30
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 31
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 32
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 33
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 34
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 35
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 36
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 37
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 38
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 39
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 40
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 41
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 42
%square[aux]43:2, parents:0, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 43
%square[aux]43:2, parents:0, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 44
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 45
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 46
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 47
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 48
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 49
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 50
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 51
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 52
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 53
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 54
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 55
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 56
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 57
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 58
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 59
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 60
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 61
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 62
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 63
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 64
%square[aux]43:2, parents:1, square[aux]43:0, generation[aux]43:1, parents:1, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 65
%square[aux]43:2, parents:1, square[aux]43:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).


square[aux]43dn_gs(Alter, Ego) :-  generation[aux]43gs(Alter, Ego).
                               |   children(Alter, Ego).
                               |   square[aux]43dn_gs(A, Ego), children(Alter, A).
;; 0
%square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 10
%square[aux]43dn_gs:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 11
%square[aux]43dn_gs:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Alter, Ego).
;; 12
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 13
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 14
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 15
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 16
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 17
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 18
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 19
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 20
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 21
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 22
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 23
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:0, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 24
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 25
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 26
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 27
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 28
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 29
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 30
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 31
%square[aux]43dn_gs:2, square[aux]43dn_gs:0, generation[aux]43gs:1, parents:1, generation[aux]43gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 32
%square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), son(Alter, A).
;; 33
%square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), daughter(Alter, A).
;; 34
%square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), son(Alter, A).
;; 35
%square[aux]43dn_gs:2, square[aux]43dn_gs:1, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), daughter(Alter, A).


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


vabo(Alter, Ego) :-  sibling_in_law[aux]43(Alter, Ego), male(Ego), male(Alter).
{"FaBroDaHu_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiMoSisSo"}
;; 0
%vabo:0, sibling_in_law[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Ego), male(Alter).
;; 1
%vabo:0, sibling_in_law[aux]43:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 spouse(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Ego), male(Alter).
;; 2
%vabo:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
 spouse(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Ego), male(Alter).
;; 3
%vabo:0, sibling_in_law[aux]43:1, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
 spouse(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), child(Alter, D), gender(F, B), gender(F, D), male(Ego), male(Alter).
;; 4
%vabo:0, sibling_in_law[aux]43:2, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), male(Ego), male(Alter).
;; 5
%vabo:0, sibling_in_law[aux]43:3, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), spouse(Alter, C), male(Ego), male(Alter).
;; 6
%vabo:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:0, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
 mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), male(Ego), male(Alter).
;; 7
%vabo:0, sibling_in_law[aux]43:3, even_gen[aux]43:1, parents:1, even_gen[aux]43:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
 father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), child(E, C), gender(F, A), gender(F, C), spouse(Alter, E), male(Ego), male(Alter).

