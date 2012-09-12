;;  Horn Clause Representation of Surui(Adr) Kinship Term-of-Address Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Surui(Adr)") (author, "Carolyn Bontkes") (date, "1985-01-01") (citation, "Carolyn Bontkes in SOUTH AMERICAN KINSHIP pp. 28-30") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, true) (recursiveLevels, 1)
(synonyms, (mo, moy))
(overlaps, (mba, (onob)), (mo, (onob)), (nema, (yeey)), (onob, (mba, mo)), (yeey, (nema)))
(umbrellas, (mba, (mo)), (omay, (onob)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

amo(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                |  [ext],  parents(A, Ego), parents(B, A), square[aux]461(Alter, B), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaBroSo_FaFaFaFaBroSoSo_FaFaFaFaFa_FaFaFaMoFa_FaFaFaMoSisSo_FaFaFaMoSisSoSo_FaFaMoFa_FaFaMoFaBro_FaFaMoFaBroDaSo_FaFaMoFaFa_FaFaMoMoFa_FaFaMoMoSisDaSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBro_FaMoFaFaBroSo_FaMoFaFaBroSoSo_FaMoFaFaFa_FaMoFaMoFa_FaMoFaMoSisSo_FaMoFaMoSisSoSo_FaMoMoFa_FaMoMoFaBro_FaMoMoFaBroDaSo_FaMoMoFaFa_FaMoMoMoFa_FaMoMoMoSisDaSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBro_MoFaFaFaBroSo_MoFaFaFaBroSoSo_MoFaFaFaFa_MoFaFaMoFa_MoFaFaMoSisSo_MoFaFaMoSisSoSo_MoFaMoFa_MoFaMoFaBro_MoFaMoFaBroDaSo_MoFaMoFaFa_MoFaMoMoFa_MoFaMoMoSisDaSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBro_MoMoFaFaBroSo_MoMoFaFaBroSoSo_MoMoFaFaFa_MoMoFaMoFa_MoMoFaMoSisSo_MoMoFaMoSisSoSo_MoMoMoFa_MoMoMoFaBro_MoMoMoFaBroDaSo_MoMoMoFaFa_MoMoMoMoFa_MoMoMoMoSisDaSo_MoMoMoSisSo"}
;; 0
%amo:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%amo:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 4
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 5
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 6
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 7
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 8
%amo:1, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 9
%amo:1, parents:0, parents:0, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 10
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 11
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 12
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 13
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 14
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 15
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 16
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 17
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 18
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 19
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 20
%amo:1, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 21
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 22
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 23
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 24
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 25
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 26
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 27
%amo:1, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 28
%amo:1, parents:0, parents:1, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 29
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 30
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 31
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 32
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 33
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 34
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 35
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 36
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 37
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 38
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 39
%amo:1, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 40
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 41
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 42
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 43
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 44
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 45
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 46
%amo:1, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 47
%amo:1, parents:1, parents:0, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 48
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 49
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 50
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 51
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 52
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 53
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 54
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 55
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 56
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 57
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 58
%amo:1, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 59
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 60
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 61
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 62
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 63
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 64
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 65
%amo:1, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), male(Alter).
;; 66
%amo:1, parents:1, parents:1, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 67
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 68
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 69
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), male(Alter).
;; 70
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 71
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 72
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 73
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 74
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 75
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 76
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 77
%amo:1, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).


are(Alter, Ego) :-  male(Ego), brother(Alter, Ego).
                |  [ext],  male(Ego), brother(A, Ego), para_gen[aux]462(Alter, A), not(equal(Ego, Alter)).
{"Bro_FaBroSo_MoSisSo"}
;; 0
%are:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%are:1, brother:0, sibling:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Bro}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), not(equal(Ego, Alter)).
;; 2
%are:1, brother:0, sibling:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), not(equal(Ego, Alter)).
;; 3
%are:1, brother:0, sibling:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), not(equal(Ego, Alter)).


aya(Alter, Ego) :-  mother(Alter, Ego).
                |  [ext],  mother(A, Ego), para_gen[aux]462(Alter, A).
{"Mo_MoFaBroDa_MoMoSisDa_MoSis"}
;; 0
%aya:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%aya:1, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 2
%aya:1, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 3
%aya:1, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).


beya(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                 |   father(A, Ego), sister(Alter, A).
                 |  [ext],  parents(A, Ego), parents(B, A), square[aux]461(Alter, B), female(Alter).
                 |  [ext],  father(A, Ego), sister(B, A), para_gen[aux]462(Alter, B), not(equal(A, Alter)).
{"FaFaBroDa_FaFaFaBroDa_FaFaFaFaBroSoDa_FaFaFaFaMo_FaFaFaMo_FaFaFaMoMo_FaFaFaMoSis_FaFaFaMoSisSoDa_FaFaMo_FaFaMoFaBroDa_FaFaMoFaBroDaDa_FaFaMoFaMo_FaFaMoMo_FaFaMoMoMo_FaFaMoMoSis_FaFaMoMoSisDa_FaFaMoMoSisDaDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaFaBroSoDa_FaMoFaFaMo_FaMoFaMo_FaMoFaMoMo_FaMoFaMoSis_FaMoFaMoSisSoDa_FaMoMo_FaMoMoFaBroDa_FaMoMoFaBroDaDa_FaMoMoFaMo_FaMoMoMo_FaMoMoMoMo_FaMoMoMoSis_FaMoMoMoSisDa_FaMoMoMoSisDaDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_FaMoSisDa_FaSis_MoFaFaBroDa_MoFaFaFaBroSoDa_MoFaFaFaMo_MoFaFaMo_MoFaFaMoMo_MoFaFaMoSis_MoFaFaMoSisSoDa_MoFaMo_MoFaMoFaBroDa_MoFaMoFaBroDaDa_MoFaMoFaMo_MoFaMoMo_MoFaMoMoMo_MoFaMoMoSis_MoFaMoMoSisDa_MoFaMoMoSisDaDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroSoDa_MoMoFaFaMo_MoMoFaMo_MoMoFaMoMo_MoMoFaMoSis_MoMoFaMoSisSoDa_MoMoMo_MoMoMoFaBroDa_MoMoMoFaBroDaDa_MoMoMoFaMo_MoMoMoMo_MoMoMoMoMo_MoMoMoMoSis_MoMoMoMoSisDa_MoMoMoMoSisDaDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%beya:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%beya:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%beya:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 5
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 6
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 7
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 8
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 9
%beya:2, parents:0, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 10
%beya:2, parents:0, parents:0, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 11
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 12
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 13
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 14
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 15
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 16
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 17
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 18
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 19
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 20
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 21
%beya:2, parents:0, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 22
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 23
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 24
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 25
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 26
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 27
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 28
%beya:2, parents:0, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 29
%beya:2, parents:0, parents:1, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 30
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 31
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 32
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 33
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 34
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 35
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 36
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 37
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 38
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 39
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 40
%beya:2, parents:0, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 41
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 42
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 43
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 44
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 45
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 46
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 47
%beya:2, parents:1, parents:0, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 48
%beya:2, parents:1, parents:0, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 49
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 50
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 51
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 52
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 53
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 54
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 55
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 56
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 57
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 58
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 59
%beya:2, parents:1, parents:0, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 60
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 61
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 62
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 63
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 64
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 65
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 66
%beya:2, parents:1, parents:1, square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), gender(I, C), gender(I, H), gender(J, D), gender(J, G), child(Alter, H), female(Alter).
;; 67
%beya:2, parents:1, parents:1, square[aux]461:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 68
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 69
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 70
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), female(Alter).
;; 71
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 72
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 73
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 74
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 75
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 76
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 77
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 78
%beya:2, parents:1, parents:1, square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 79
%beya:3, sister:0, sibling:0, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), not(equal(A, Alter)).
;; 80
%beya:3, sister:0, sibling:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), mother(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), gender(I, H), gender(I, E), child(Alter, H), gender(J, D), gender(J, Alter), not(equal(A, Alter)).
;; 81
%beya:3, sister:0, sibling:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), father(E, D), mother(F, E), father(G, E), child(H, F), child(H, G), not(equal(H, E)), gender(I, H), gender(I, E), child(Alter, H), gender(J, D), gender(J, Alter), not(equal(A, Alter)).


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


generation[aux]46(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]46gs(B, A), child(Alter, B).
;; 0
%generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


generation[aux]46gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]46gs(B, A), children(Alter, B).
;; 0
%generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


generation[aux]46junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]46junior(B, A), child(Alter, B).
;; 0
%generation[aux]46junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]46junior:1, parents:0, generation[aux]46junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]46junior:1, parents:1, generation[aux]46junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).


generation[aux]46senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]46senior(B, A), child(Alter, B).
;; 0
%generation[aux]46senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]46senior:1, parents:0, generation[aux]46senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]46senior:1, parents:1, generation[aux]46senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).


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


inhob(Alter, Ego) :-  female(Ego), brother(Alter, Ego).
                  |  [ext],  female(Ego), brother(A, Ego), para_gen[aux]462(Alter, A).
{"Bro_FaBroSo_MoSisSo"}
;; 0
%inhob:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%inhob:1, brother:0, sibling:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Bro}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C).
;; 2
%inhob:1, brother:0, sibling:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter).
;; 3
%inhob:1, brother:0, sibling:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter).


koko(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                 |  [ext],  mother(A, Ego), para_gen[aux]461(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroSoSo_MoFaMoSisSoSo_MoMoFaBroDaSo_MoMoMoSisDaSo_MoMoSisSo"}
;; 0
%koko:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%koko:1, para_gen[aux]461:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%koko:1, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 3
%koko:1, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 4
%koko:1, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Alter, G), male(Alter).
;; 5
%koko:1, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Alter, G), male(Alter).
;; 6
%koko:1, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Alter, G), male(Alter).
;; 7
%koko:1, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Alter, G), male(Alter).


mba(Alter, Ego) :-  father(Alter, Ego).
                |   son(Alter, Ego).
                |   children(A, Ego), son(Alter, A).
                |  [ext],  father(A, Ego), para_gen[aux]462(Alter, A).
                |  [ext],  para_gen[aux]462(A, Ego), son(Alter, A).
                |  [ext],  para_gen[aux]462(A, Ego), children(B, A), son(Alter, B).
{"BroDaSo_BroSo_BroSoSo_DaSo_Fa_FaBro_FaBroDaDaSo_FaBroDaSo_FaBroDaSoSo_FaBroSoDaSo_FaBroSoSo_FaBroSoSoSo_FaFaBroSo_FaMoSisSo_MoSisDaDaSo_MoSisDaSo_MoSisDaSoSo_MoSisSoDaSo_MoSisSoSo_MoSisSoSoSo_SisDaSo_SisSo_SisSoSo_So_SoSo"}
;; 0
%mba:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%mba:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 2
%mba:2, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 3
%mba:2, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 4
%mba:3, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 5
%mba:3, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 6
%mba:3, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 7
%mba:4, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 8
%mba:4, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 9
%mba:4, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 10
%mba:5, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(Alter, E).
;; 11
%mba:5, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(Alter, E).
;; 12
%mba:5, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), son(Alter, H).
;; 13
%mba:5, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), son(Alter, H).
;; 14
%mba:5, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), son(Alter, H).
;; 15
%mba:5, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), son(Alter, H).
;; 16
%mba:4, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 17
%mba:4, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 18
%mba:4, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 19
%mba:5, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(Alter, E).
;; 20
%mba:5, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(Alter, E).
;; 21
%mba:5, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), son(Alter, H).
;; 22
%mba:5, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), son(Alter, H).
;; 23
%mba:5, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), son(Alter, H).
;; 24
%mba:5, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), son(Alter, H).


mo(Alter, Ego) :-  moy(Alter, Ego).
{"BroSo_FaBroDaSo_FaBroSoSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%mo:0, moy:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%mo:0, moy:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 2
%mo:0, moy:1, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 3
%mo:0, moy:1, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 4
%mo:0, moy:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 5
%mo:0, moy:1, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 6
%mo:0, moy:1, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).


moy(Alter, Ego) :-  son(Alter, Ego).
                |  [ext],  para_gen[aux]462(A, Ego), son(Alter, A).
;; 0
%moy:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Alter, Ego).
;; 1
%moy:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 2
%moy:1, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 3
%moy:1, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 4
%moy:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 5
%moy:1, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).
;; 6
%moy:1, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(Alter, F).


nema(Alter, Ego) :-  male(Ego), parents(A, Ego), sibling(B, A), daughter(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                 |   female(Ego), parents(A, Ego), sibling(B, A), son(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                 |  [ext],  male(Ego), x_rule2[aux]46down(Alter, Ego), female(Alter).
                 |  [ext],  female(Ego), x_rule2[aux]46down(Alter, Ego), male(Alter).
{"BroSo_FaBroDaDa_FaBroSoSo_FaFaBroDaDa_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoDaDa_FaFaBroSoSoSo_FaFaFaBroDaDa_FaFaFaBroDaDaDa_FaFaFaBroDaDaSo_FaFaFaBroDaSo_FaFaFaBroDaSoDa_FaFaFaBroDaSoSo_FaFaFaBroSoDaDa_FaFaFaBroSoDaSo_FaFaFaSisDaDa_FaFaFaSisDaDaDa_FaFaFaSisDaDaSo_FaFaFaSisDaSo_FaFaFaSisDaSoDa_FaFaFaSisDaSoSo_FaFaFaSisSoDaDa_FaFaFaSisSoDaSo_FaFaMoBroDaDa_FaFaMoBroDaDaDa_FaFaMoBroDaDaSo_FaFaMoBroDaSo_FaFaMoBroDaSoDa_FaFaMoBroDaSoSo_FaFaMoBroSoDaDa_FaFaMoBroSoDaSo_FaFaMoSisDaDa_FaFaMoSisDaDaDa_FaFaMoSisDaDaSo_FaFaMoSisDaSo_FaFaMoSisDaSoDa_FaFaMoSisDaSoSo_FaFaMoSisSoDaDa_FaFaMoSisSoDaSo_FaFaSisDa_FaFaSisDaDa_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSo_FaFaSisSoDa_FaFaSisSoDaDa_FaFaSisSoSo_FaFaSisSoSoSo_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSo_FaMoBroSoDa_FaMoBroSoDaDa_FaMoBroSoSo_FaMoBroSoSoSo_FaMoFaBroDaDaDa_FaMoFaBroDaDaSo_FaMoFaBroSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoDaSo_FaMoFaBroSoSo_FaMoFaBroSoSoDa_FaMoFaBroSoSoSo_FaMoFaSisDaDaDa_FaMoFaSisDaDaSo_FaMoFaSisSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoDaSo_FaMoFaSisSoSo_FaMoFaSisSoSoDa_FaMoFaSisSoSoSo_FaMoMoBroDaDaDa_FaMoMoBroDaDaSo_FaMoMoBroSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoDaSo_FaMoMoBroSoSo_FaMoMoBroSoSoDa_FaMoMoBroSoSoSo_FaMoMoSisDaDaDa_FaMoMoSisDaDaSo_FaMoMoSisSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoDaSo_FaMoMoSisSoSo_FaMoMoSisSoSoDa_FaMoMoSisSoSoSo_FaMoSisDaDa_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoDaDa_FaMoSisSoSoSo_FaSisDa_FaSisDaDa_FaSisDaSo_FaSisSo_FaSisSoDa_FaSisSoSo_HuFaBroDaSo_HuFaFaBroDaDaSo_HuFaFaBroDaSoSo_HuFaFaBroSoDaSo_HuFaFaSisDaDaSo_HuFaFaSisDaSoSo_HuFaFaSisSoDaSo_HuFaMoBroDaDaSo_HuFaMoBroDaSoSo_HuFaMoBroSoDaSo_HuFaMoSisDaDaSo_HuFaMoSisDaSoSo_HuFaMoSisSoDaSo_HuFaSisDaSo_HuFaSisSoSo_HuMoBroDaSo_HuMoBroSoSo_HuMoFaBroDaDaSo_HuMoFaBroSoDaSo_HuMoFaBroSoSoSo_HuMoFaSisDaDaSo_HuMoFaSisSoDaSo_HuMoFaSisSoSoSo_HuMoMoBroDaDaSo_HuMoMoBroSoDaSo_HuMoMoBroSoSoSo_HuMoMoSisDaDaSo_HuMoMoSisSoDaSo_HuMoMoSisSoSoSo_HuMoSisDaSo_HuSisSo_MoBroDa_MoBroDaDa_MoBroDaSo_MoBroSo_MoBroSoDa_MoBroSoSo_MoFaBroDaDaDa_MoFaBroDaSoSo_MoFaBroSoDa_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroDaDaSo_MoFaFaBroDaSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaFaBroSoSoDa_MoFaFaBroSoSoSo_MoFaFaSisDaDa_MoFaFaSisDaDaDa_MoFaFaSisDaDaSo_MoFaFaSisDaSo_MoFaFaSisDaSoDa_MoFaFaSisDaSoSo_MoFaFaSisSoSoDa_MoFaFaSisSoSoSo_MoFaMoBroDaDa_MoFaMoBroDaDaDa_MoFaMoBroDaDaSo_MoFaMoBroDaSo_MoFaMoBroDaSoDa_MoFaMoBroDaSoSo_MoFaMoBroSoSoDa_MoFaMoBroSoSoSo_MoFaMoSisDaDa_MoFaMoSisDaDaDa_MoFaMoSisDaDaSo_MoFaMoSisDaSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaMoSisSoSoDa_MoFaMoSisSoSoSo_MoFaSisDa_MoFaSisDaDa_MoFaSisDaDaDa_MoFaSisDaSo_MoFaSisDaSoSo_MoFaSisSo_MoFaSisSoDa_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDa_MoMoBroDaDa_MoMoBroDaDaDa_MoMoBroDaSo_MoMoBroDaSoSo_MoMoBroSo_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoFaBroDaSoDa_MoMoFaBroDaSoSo_MoMoFaBroSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoDaSo_MoMoFaBroSoSo_MoMoFaBroSoSoDa_MoMoFaBroSoSoSo_MoMoFaSisDaSoDa_MoMoFaSisDaSoSo_MoMoFaSisSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoDaSo_MoMoFaSisSoSo_MoMoFaSisSoSoDa_MoMoFaSisSoSoSo_MoMoMoBroDaSoDa_MoMoMoBroDaSoSo_MoMoMoBroSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoDaSo_MoMoMoBroSoSo_MoMoMoBroSoSoDa_MoMoMoBroSoSoSo_MoMoMoSisDaSoDa_MoMoMoSisDaSoSo_MoMoMoSisSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoDaSo_MoMoMoSisSoSo_MoMoMoSisSoSoDa_MoMoMoSisSoSoSo_MoMoSisDaDaDa_MoMoSisDaSoSo_MoMoSisSoDa_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisDaDa_MoSisSoSo_SisDa_WiBroDa_WiFaBroSoDa_WiFaFaBroDaDaDa_WiFaFaBroDaSoDa_WiFaFaBroSoSoDa_WiFaFaSisDaDaDa_WiFaFaSisDaSoDa_WiFaFaSisSoSoDa_WiFaMoBroDaDaDa_WiFaMoBroDaSoDa_WiFaMoBroSoSoDa_WiFaMoSisDaDaDa_WiFaMoSisDaSoDa_WiFaMoSisSoSoDa_WiFaSisDaDa_WiFaSisSoDa_WiMoBroDaDa_WiMoBroSoDa_WiMoFaBroDaSoDa_WiMoFaBroSoDaDa_WiMoFaBroSoSoDa_WiMoFaSisDaSoDa_WiMoFaSisSoDaDa_WiMoFaSisSoSoDa_WiMoMoBroDaSoDa_WiMoMoBroSoDaDa_WiMoMoBroSoSoDa_WiMoMoSisDaSoDa_WiMoMoSisSoDaDa_WiMoMoSisSoSoDa_WiMoSisSoDa"}
;; 0
%nema:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%nema:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%nema:1, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%nema:1, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Alter).
;; 5
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 6
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 7
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 8
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 9
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 10
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 11
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 12
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 13
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 14
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 15
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 16
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 17
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 18
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 19
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 20
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 21
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 22
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 23
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 24
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 25
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Alter).
;; 26
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 27
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 28
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 29
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 30
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 31
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 32
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 33
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 34
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 35
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 36
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 37
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 38
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 39
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 40
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 41
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 42
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 43
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 44
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 45
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 46
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 47
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 48
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 49
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 50
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 51
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 52
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 53
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 54
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 55
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 56
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 57
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 58
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 59
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 60
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 61
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 62
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 63
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 64
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 65
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 66
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 67
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 68
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 69
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 70
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 71
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 72
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 73
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 74
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 75
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 76
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 77
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 78
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 79
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 80
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 81
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 82
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 83
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 84
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 85
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 86
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {WiBroDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 87
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 88
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoSisSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 89
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 90
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 91
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 92
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 93
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 94
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 95
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 96
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 97
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaBroSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 98
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 99
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 100
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 101
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 102
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 103
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 104
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 105
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 106
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 107
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {SisDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 108
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 109
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 110
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 111
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 112
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 113
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 114
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 115
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 116
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 117
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 118
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 119
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 120
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 121
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 122
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 123
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 124
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 125
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 126
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 127
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 128
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 129
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 130
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 131
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 132
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 133
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 134
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 135
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 136
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 137
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 138
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 139
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 140
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 141
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 142
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 143
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 144
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 145
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 146
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 147
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 148
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 149
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 150
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 151
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 152
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 153
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 154
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 155
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 156
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 157
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 158
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 159
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 160
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 161
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 162
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 163
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 164
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 165
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 166
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 167
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 168
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {WiBroDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 169
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 170
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoSisSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 171
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 172
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 173
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 174
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 175
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 176
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 177
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 178
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 179
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaBroSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 180
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 181
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 182
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 183
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 184
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 185
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 186
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 187
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 188
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 189
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {SisDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 190
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 191
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 192
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 193
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 194
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 195
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 196
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 197
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 198
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 199
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 200
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 201
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 202
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 203
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 204
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 205
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 206
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 207
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 208
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 209
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 210
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 211
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 212
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 213
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 214
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 215
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 216
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 217
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 218
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 219
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 220
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 221
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 222
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 223
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 224
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 225
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 226
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 227
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 228
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 229
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 230
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 231
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 232
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 233
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 234
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 235
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 236
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 237
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 238
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 239
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 240
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 241
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 242
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 243
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 244
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 245
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 246
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 247
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 248
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 249
%nema:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 250
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 251
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 252
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 253
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 254
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 255
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 256
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 257
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 258
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 259
%nema:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 260
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 261
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 262
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 263
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 264
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 265
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 266
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 267
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 268
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 269
%nema:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 270
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Alter).
;; 271
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 272
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 273
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 274
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 275
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 276
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 277
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 278
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 279
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 280
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 281
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 282
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 283
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 284
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 285
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 286
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 287
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 288
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 289
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 290
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 291
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Alter).
;; 292
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 293
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 294
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 295
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 296
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 297
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 298
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 299
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 300
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 301
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 302
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 303
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 304
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 305
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 306
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 307
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 308
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 309
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 310
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 311
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 312
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 313
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 314
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 315
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 316
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 317
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 318
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 319
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 320
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 321
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 322
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 323
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 324
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 325
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 326
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 327
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 328
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 329
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 330
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 331
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 332
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 333
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 334
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 335
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 336
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 337
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 338
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 339
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 340
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 341
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 342
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 343
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 344
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 345
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 346
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 347
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 348
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 349
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 350
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 351
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 352
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {BroSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 353
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 354
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 355
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 356
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 357
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 358
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 359
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 360
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 361
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 362
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 363
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 364
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 365
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 366
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 367
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 368
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 369
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 370
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 371
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 372
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 373
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {HuSisSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 374
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 375
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoSisDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 376
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 377
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 378
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 379
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 380
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 381
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 382
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 383
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 384
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaBroDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 385
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 386
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 387
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 388
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 389
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 390
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 391
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 392
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 393
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 394
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 395
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 396
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 397
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 398
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 399
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 400
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 401
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 402
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 403
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 404
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 405
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 406
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 407
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 408
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 409
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 410
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 411
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 412
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 413
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 414
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 415
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 416
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 417
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 418
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 419
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 420
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 421
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 422
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 423
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 424
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 425
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 426
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 427
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 428
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 429
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 430
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 431
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 432
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaSoSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 433
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaSo}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 434
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {BroSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 435
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 436
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 437
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 438
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 439
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 440
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 441
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 442
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 443
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 444
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 445
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 446
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 447
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 448
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 449
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 450
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 451
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 452
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 453
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 454
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 455
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {HuSisSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 456
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 457
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoSisDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 458
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 459
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 460
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 461
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 462
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 463
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 464
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 465
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 466
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaBroDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 467
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 468
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 469
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 470
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 471
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 472
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 473
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 474
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 475
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 476
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 477
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 478
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 479
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 480
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 481
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 482
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 483
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 484
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 485
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 486
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 487
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 488
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 489
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 490
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 491
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 492
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 493
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 494
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 495
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 496
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 497
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 498
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 499
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 500
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 501
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 502
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 503
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 504
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 505
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 506
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 507
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 508
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 509
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 510
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 511
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 512
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 513
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 514
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaSoSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 515
%nema:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaSo}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 516
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 517
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 518
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 519
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 520
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 521
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 522
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 523
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 524
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 525
%nema:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 526
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 527
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 528
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 529
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 530
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 531
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 532
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 533
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 534
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 535
%nema:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).


omay(Alter, Ego) :-  male(Ego), parents(A, Ego), sibling(B, A), son(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                 |   female(Ego), parents(A, Ego), sibling(B, A), daughter(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                 |  [ext],  male(Ego), x_rule2[aux]46down(Alter, Ego), male(Alter).
                 |  [ext],  female(Ego), x_rule2[aux]46down(Alter, Ego), female(Alter).
{"BroDa_FaBroDaSo_FaBroSoDa_FaFaBroDaDa_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoDaSo_FaFaBroSoSoDa_FaFaFaBroDaDa_FaFaFaBroDaDaDa_FaFaFaBroDaDaSo_FaFaFaBroDaSo_FaFaFaBroDaSoDa_FaFaFaBroDaSoSo_FaFaFaBroSoDaDa_FaFaFaBroSoDaSo_FaFaFaSisDaDa_FaFaFaSisDaDaDa_FaFaFaSisDaDaSo_FaFaFaSisDaSo_FaFaFaSisDaSoDa_FaFaFaSisDaSoSo_FaFaFaSisSoDaDa_FaFaFaSisSoDaSo_FaFaMoBroDaDa_FaFaMoBroDaDaDa_FaFaMoBroDaDaSo_FaFaMoBroDaSo_FaFaMoBroDaSoDa_FaFaMoBroDaSoSo_FaFaMoBroSoDaDa_FaFaMoBroSoDaSo_FaFaMoSisDaDa_FaFaMoSisDaDaDa_FaFaMoSisDaDaSo_FaFaMoSisDaSo_FaFaMoSisDaSoDa_FaFaMoSisDaSoSo_FaFaMoSisSoDaDa_FaFaMoSisSoDaSo_FaFaSisDa_FaFaSisDaDa_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSo_FaFaSisSoDa_FaFaSisSoDaSo_FaFaSisSoSo_FaFaSisSoSoDa_FaMoBroDa_FaMoBroDaDa_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSo_FaMoBroSoDa_FaMoBroSoDaSo_FaMoBroSoSo_FaMoBroSoSoDa_FaMoFaBroDaDaDa_FaMoFaBroDaDaSo_FaMoFaBroSoDa_FaMoFaBroSoDaDa_FaMoFaBroSoDaSo_FaMoFaBroSoSo_FaMoFaBroSoSoDa_FaMoFaBroSoSoSo_FaMoFaSisDaDaDa_FaMoFaSisDaDaSo_FaMoFaSisSoDa_FaMoFaSisSoDaDa_FaMoFaSisSoDaSo_FaMoFaSisSoSo_FaMoFaSisSoSoDa_FaMoFaSisSoSoSo_FaMoMoBroDaDaDa_FaMoMoBroDaDaSo_FaMoMoBroSoDa_FaMoMoBroSoDaDa_FaMoMoBroSoDaSo_FaMoMoBroSoSo_FaMoMoBroSoSoDa_FaMoMoBroSoSoSo_FaMoMoSisDaDaDa_FaMoMoSisDaDaSo_FaMoMoSisSoDa_FaMoMoSisSoDaDa_FaMoMoSisSoDaSo_FaMoMoSisSoSo_FaMoMoSisSoSoDa_FaMoMoSisSoSoSo_FaMoSisDaDa_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoDaSo_FaMoSisSoSoDa_FaSisDa_FaSisDaDa_FaSisDaSo_FaSisSo_FaSisSoDa_FaSisSoSo_HuFaBroDaDa_HuFaFaBroDaDaDa_HuFaFaBroDaSoDa_HuFaFaBroSoDaDa_HuFaFaSisDaDaDa_HuFaFaSisDaSoDa_HuFaFaSisSoDaDa_HuFaMoBroDaDaDa_HuFaMoBroDaSoDa_HuFaMoBroSoDaDa_HuFaMoSisDaDaDa_HuFaMoSisDaSoDa_HuFaMoSisSoDaDa_HuFaSisDaDa_HuFaSisSoDa_HuMoBroDaDa_HuMoBroSoDa_HuMoFaBroDaDaDa_HuMoFaBroSoDaDa_HuMoFaBroSoSoDa_HuMoFaSisDaDaDa_HuMoFaSisSoDaDa_HuMoFaSisSoSoDa_HuMoMoBroDaDaDa_HuMoMoBroSoDaDa_HuMoMoBroSoSoDa_HuMoMoSisDaDaDa_HuMoMoSisSoDaDa_HuMoMoSisSoSoDa_HuMoSisDaDa_HuSisDa_MoBroDa_MoBroDaDa_MoBroDaSo_MoBroSo_MoBroSoDa_MoBroSoSo_MoFaBroDaDaSo_MoFaBroDaSoDa_MoFaBroSoDa_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroDaDaSo_MoFaFaBroDaSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaFaBroSoSoDa_MoFaFaBroSoSoSo_MoFaFaSisDaDa_MoFaFaSisDaDaDa_MoFaFaSisDaDaSo_MoFaFaSisDaSo_MoFaFaSisDaSoDa_MoFaFaSisDaSoSo_MoFaFaSisSoSoDa_MoFaFaSisSoSoSo_MoFaMoBroDaDa_MoFaMoBroDaDaDa_MoFaMoBroDaDaSo_MoFaMoBroDaSo_MoFaMoBroDaSoDa_MoFaMoBroDaSoSo_MoFaMoBroSoSoDa_MoFaMoBroSoSoSo_MoFaMoSisDaDa_MoFaMoSisDaDaDa_MoFaMoSisDaDaSo_MoFaMoSisDaSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaMoSisSoSoDa_MoFaMoSisSoSoSo_MoFaSisDa_MoFaSisDaDa_MoFaSisDaDaSo_MoFaSisDaSo_MoFaSisDaSoDa_MoFaSisSo_MoFaSisSoDa_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDa_MoMoBroDaDa_MoMoBroDaDaSo_MoMoBroDaSo_MoMoBroDaSoDa_MoMoBroSo_MoMoBroSoDa_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoFaBroDaSoDa_MoMoFaBroDaSoSo_MoMoFaBroSoDa_MoMoFaBroSoDaDa_MoMoFaBroSoDaSo_MoMoFaBroSoSo_MoMoFaBroSoSoDa_MoMoFaBroSoSoSo_MoMoFaSisDaSoDa_MoMoFaSisDaSoSo_MoMoFaSisSoDa_MoMoFaSisSoDaDa_MoMoFaSisSoDaSo_MoMoFaSisSoSo_MoMoFaSisSoSoDa_MoMoFaSisSoSoSo_MoMoMoBroDaSoDa_MoMoMoBroDaSoSo_MoMoMoBroSoDa_MoMoMoBroSoDaDa_MoMoMoBroSoDaSo_MoMoMoBroSoSo_MoMoMoBroSoSoDa_MoMoMoBroSoSoSo_MoMoMoSisDaSoDa_MoMoMoSisDaSoSo_MoMoMoSisSoDa_MoMoMoSisSoDaDa_MoMoMoSisSoDaSo_MoMoMoSisSoSo_MoMoMoSisSoSoDa_MoMoMoSisSoSoSo_MoMoSisDaDaSo_MoMoSisDaSoDa_MoMoSisSoDa_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisDaSo_MoSisSoDa_SisSo_WiBroSo_WiFaBroSoSo_WiFaFaBroDaDaSo_WiFaFaBroDaSoSo_WiFaFaBroSoSoSo_WiFaFaSisDaDaSo_WiFaFaSisDaSoSo_WiFaFaSisSoSoSo_WiFaMoBroDaDaSo_WiFaMoBroDaSoSo_WiFaMoBroSoSoSo_WiFaMoSisDaDaSo_WiFaMoSisDaSoSo_WiFaMoSisSoSoSo_WiFaSisDaSo_WiFaSisSoSo_WiMoBroDaSo_WiMoBroSoSo_WiMoFaBroDaSoSo_WiMoFaBroSoDaSo_WiMoFaBroSoSoSo_WiMoFaSisDaSoSo_WiMoFaSisSoDaSo_WiMoFaSisSoSoSo_WiMoMoBroDaSoSo_WiMoMoBroSoDaSo_WiMoMoBroSoSoSo_WiMoMoSisDaSoSo_WiMoMoSisSoDaSo_WiMoMoSisSoSoSo_WiMoSisSoSo"}
;; 0
%omay:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%omay:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 2
%omay:1, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 3
%omay:1, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 4
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Alter).
;; 5
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 6
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 7
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 8
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 9
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 10
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 11
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 12
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 13
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 14
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 15
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 16
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 17
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 18
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 19
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 20
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 21
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 22
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 23
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 24
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 25
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), male(Alter).
;; 26
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 27
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 28
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 29
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 30
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 31
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 32
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 33
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 34
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 35
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 36
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 37
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), male(Alter).
;; 38
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 39
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 40
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 41
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 42
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 43
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 44
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 45
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), male(Alter).
;; 46
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 47
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 48
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 49
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 50
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 51
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 52
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 53
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 54
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 55
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 56
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 57
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 58
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 59
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 60
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 61
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 62
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 63
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 64
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 65
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 66
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 67
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 68
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 69
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 70
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 71
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 72
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 73
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 74
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 75
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 76
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 77
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), male(Alter).
;; 78
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 79
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 80
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 81
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 82
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 83
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 84
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 85
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), male(Alter).
;; 86
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {WiBroSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 87
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 88
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoSisSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 89
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 90
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 91
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 92
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 93
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 94
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 95
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 96
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 97
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaBroSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 98
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 99
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 100
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 101
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 102
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 103
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 104
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 105
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 106
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 107
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {SisSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 108
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 109
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 110
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 111
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 112
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 113
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 114
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 115
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 116
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 117
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 118
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 119
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 120
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 121
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 122
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 123
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 124
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 125
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 126
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 127
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 128
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 129
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 130
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 131
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 132
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 133
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 134
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 135
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 136
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 137
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 138
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 139
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 140
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 141
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 142
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 143
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 144
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 145
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 146
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 147
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 148
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 149
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 150
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 151
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 152
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 153
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 154
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 155
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 156
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 157
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 158
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 159
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 160
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 161
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 162
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 163
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 164
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 165
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 166
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 167
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 168
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {WiBroSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 169
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 170
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoSisSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 171
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 172
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 173
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 174
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 175
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 176
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 177
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 178
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 179
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaBroSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 180
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 181
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 182
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 183
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 184
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 185
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 186
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 187
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 188
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 189
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {SisSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 190
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 191
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 192
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 193
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 194
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 195
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 196
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 197
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 198
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 199
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 200
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 201
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 202
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 203
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 204
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 205
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 206
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 207
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 208
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 209
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), male(Alter).
;; 210
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 211
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiMoBroDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 212
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 213
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 214
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 215
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 216
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 217
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoFaBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 218
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 219
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiMoMoBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 220
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 221
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {WiFaSisDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 222
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 223
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 224
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 225
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 226
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 227
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaFaBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 228
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 229
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {WiFaMoBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 230
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 231
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 232
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 233
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 234
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 235
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 236
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 237
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 238
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 239
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 240
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 241
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), male(Alter).
;; 242
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 243
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 244
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 245
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 246
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 247
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 248
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 249
%omay:2, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  male(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), male(Alter).
;; 250
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 251
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 252
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 253
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 254
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 255
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 256
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 257
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 258
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 259
%omay:2, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 260
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 261
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 262
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 263
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 264
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 265
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), male(Alter).
;; 266
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 267
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 268
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 269
%omay:2, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), male(Alter).
;; 270
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Alter).
;; 271
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 272
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 273
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 274
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 275
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 276
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 277
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 278
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 279
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 280
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 281
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 282
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 283
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 284
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 285
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 286
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 287
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 288
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 289
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 290
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 291
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)), female(Alter).
;; 292
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 293
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 294
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 295
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 296
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 297
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 298
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 299
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 300
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 301
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 302
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 303
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)), female(Alter).
;; 304
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 305
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 306
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 307
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 308
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 309
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 310
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 311
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)), female(Alter).
;; 312
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 313
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 314
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 315
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 316
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 317
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 318
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 319
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 320
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 321
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 322
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 323
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 324
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 325
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 326
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 327
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 328
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 329
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 330
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 331
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 332
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 333
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 334
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 335
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 336
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 337
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 338
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 339
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 340
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 341
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 342
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 343
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)), female(Alter).
;; 344
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 345
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 346
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 347
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 348
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 349
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 350
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 351
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)), female(Alter).
;; 352
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {BroDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 353
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 354
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 355
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 356
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 357
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 358
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 359
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 360
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 361
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 362
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 363
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 364
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 365
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 366
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 367
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 368
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 369
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 370
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 371
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 372
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 373
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {HuSisDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 374
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 375
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoSisDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 376
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 377
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 378
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 379
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 380
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 381
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 382
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 383
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 384
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaBroDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 385
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 386
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 387
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 388
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 389
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 390
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 391
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 392
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 393
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 394
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 395
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 396
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 397
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 398
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 399
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 400
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 401
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 402
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 403
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 404
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 405
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 406
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 407
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 408
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 409
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 410
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 411
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 412
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 413
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 414
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 415
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 416
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 417
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 418
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 419
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 420
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 421
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 422
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 423
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 424
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 425
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 426
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 427
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 428
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 429
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 430
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 431
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 432
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaSoDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 433
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaDa}  
[ext],  female(Ego), son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 434
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {BroDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 435
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 436
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 437
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 438
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 439
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 440
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 441
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 442
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 443
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 444
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 445
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaBroSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 446
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 447
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 448
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 449
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 450
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 451
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 452
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 453
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 454
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 455
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {HuSisDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 456
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 457
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoSisDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 458
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 459
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 460
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 461
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 462
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 463
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 464
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 465
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 466
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaBroDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 467
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 468
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 469
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 470
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 471
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 472
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 473
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 474
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 475
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)), female(Alter).
;; 476
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 477
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoBroDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 478
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 479
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 480
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 481
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 482
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 483
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 484
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 485
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 486
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 487
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaSisDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 488
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 489
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 490
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 491
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 492
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 493
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 494
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 495
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 496
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 497
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuMoBroDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 498
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 499
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 500
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 501
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoSisSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 502
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 503
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoFaBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 504
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 505
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuMoMoBroSoDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 506
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 507
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {HuFaSisDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)), female(Alter).
;; 508
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 509
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 510
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 511
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoSisDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 512
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 513
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaFaBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 514
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaSoDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 515
%omay:3, x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {HuFaMoBroDaDaDa}  
[ext],  female(Ego), daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)), female(Alter).
;; 516
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 517
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 518
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 519
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 520
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 521
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 522
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 523
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 524
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 525
%omay:3, x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 526
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 527
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 528
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 529
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 530
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 531
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)), female(Alter).
;; 532
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 533
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 534
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).
;; 535
%omay:3, x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)), female(Alter).


onob(Alter, Ego) :-  koko(Ego, Alter), male(Alter).
{"FaBroDaSo_FaFaBroSoDaSo_FaMoSisSoDaSo_MoFaBroDaDaSo_MoMoSisDaDaSo_MoSisDaSo_SisSo"}
;; 0
%onob:0, koko:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 1
%onob:0, koko:1, para_gen[aux]461:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 2
%onob:0, koko:1, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 3
%onob:0, koko:1, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 4
%onob:0, koko:1, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), male(Alter).
;; 5
%onob:0, koko:1, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), male(Alter).
;; 6
%onob:0, koko:1, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), male(Alter).
;; 7
%onob:0, koko:1, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), male(Alter).


para_gen[aux]461(Alter, Ego) :-  sibling(Alter, Ego).
                             |   parents(A, Ego), sibling(B, A), gender(C, B), gender(C, A), child(Alter, B).
                             |   parents(A, Ego), parents(B, A), sibling(C, B), child(D, C), gender(E, A), gender(E, D), gender(F, B), gender(F, C), child(Alter, D).
;; 0
%para_gen[aux]461:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 3
%para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 4
%para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 5
%para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 6
%para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).


para_gen[aux]462(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Alter), gender(A, Ego).
                             |   parents(A, Ego), para_gen[aux]462(B, A), child(Alter, B), gender(C, Ego), gender(C, Alter).
;; 0
%para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 2
%para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 3
%para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 4
%para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 5
%para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).


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


square[aux]461(Alter, Ego) :-  para_gen[aux]461(Alter, Ego).
                           |   parent(Alter, Ego).
                           |   parent(A, Ego), square[aux]462(Alter, A).
;; 0
%square[aux]461:0, para_gen[aux]461:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]461:0, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%square[aux]461:0, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 3
%square[aux]461:0, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 4
%square[aux]461:0, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 5
%square[aux]461:0, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 6
%square[aux]461:0, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), gender(G, A), gender(G, F), gender(H, B), gender(H, E), child(Alter, F).
;; 7
%square[aux]461:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 8
%square[aux]461:2, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 9
%square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 10
%square[aux]461:2, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 11
%square[aux]461:2, square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, Alter).
;; 12
%square[aux]461:2, square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, Alter).
;; 13
%square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 14
%square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, B), gender(H, Alter).
;; 15
%square[aux]461:2, square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, B), gender(H, Alter).
;; 16
%square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, Alter).
;; 17
%square[aux]461:2, square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, Alter).
;; 18
%square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 19
%square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, B), gender(H, Alter).
;; 20
%square[aux]461:2, square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, B), gender(H, Alter).
;; 21
%square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, Alter).
;; 22
%square[aux]461:2, square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, Alter).


square[aux]462(Alter, Ego) :-  para_gen[aux]462(Alter, Ego).
                           |   children(Ego, Alter).
                           |   children(Ego, A), square[aux]462(Alter, A).
;; 0
%square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 2
%square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 3
%square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, Alter).
;; 4
%square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, Alter).
;; 5
%square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 6
%square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 7
%square[aux]462:2, children:0, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 8
%square[aux]462:2, children:0, square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, Alter).
;; 9
%square[aux]462:2, children:0, square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, Alter).
;; 10
%square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 11
%square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 12
%square[aux]462:2, children:1, square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, A), gender(G, Alter).
;; 13
%square[aux]462:2, children:1, square[aux]462:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, Alter).
;; 14
%square[aux]462:2, children:1, square[aux]462:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, Alter).
;; 15
%square[aux]462:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 16
%square[aux]462:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 17
%square[aux]462:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).


square[aux]462down(Alter, Ego) :-  para_gen[aux]462(Alter, Ego).
                               |   child(Alter, Ego).
                               |   square[aux]462down(A, Ego), child(Alter, A), gender(B, A), gender(B, Alter).
;; 0
%square[aux]462down:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%square[aux]462down:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 2
%square[aux]462down:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 3
%square[aux]462down:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 child(Alter, Ego).
;; 4
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), child(Alter, C), gender(E, C), gender(E, Alter).
;; 5
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), child(Alter, F), gender(H, F), gender(H, Alter).
;; 6
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), child(Alter, F), gender(H, F), gender(H, Alter).
;; 7
%square[aux]462down:2, square[aux]462down:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 child(A, Ego), child(Alter, A), gender(B, A), gender(B, Alter).
;; 8
%square[aux]462down:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 9
%square[aux]462down:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 10
%square[aux]462down:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Ego), gender(F, Alter).
;; 11
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), child(Alter, C), gender(E, C), gender(E, Alter).
;; 12
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), child(Alter, F), gender(H, F), gender(H, Alter).
;; 13
%square[aux]462down:2, square[aux]462down:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), child(Alter, F), gender(H, F), gender(H, Alter).


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


uhb(Alter, Ego) :-  sister(Alter, Ego).
                |  [ext],  sister(A, Ego), para_gen[aux]462(Alter, A), not(equal(Ego, Alter)).
{"FaBroDa_MoSisDa_Sis"}
;; 0
%uhb:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%uhb:1, sister:0, sibling:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {Sis}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), not(equal(Ego, Alter)).
;; 2
%uhb:1, sister:0, sibling:0, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), not(equal(Ego, Alter)).
;; 3
%uhb:1, sister:0, sibling:0, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaBroDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, C), gender(I, Alter), not(equal(Ego, Alter)).


waid(Alter, Ego) :-  daughter(Alter, Ego).
                 |   children(A, Ego), daughter(Alter, A).
                 |  [ext],  para_gen[aux]462(A, Ego), daughter(Alter, A).
                 |  [ext],  para_gen[aux]462(A, Ego), children(B, A), daughter(Alter, B).
{"BroDa_BroDaDa_BroSoDa_Da_DaDa_FaBroDaDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDa_FaBroSoDaDa_FaBroSoSoDa_MoSisDaDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDa_MoSisSoDaDa_MoSisSoSoDa_SisDa_SisDaDa_SisSoDa_SoDa"}
;; 0
%waid:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%waid:1, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 2
%waid:1, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 3
%waid:2, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 4
%waid:2, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 5
%waid:2, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 6
%waid:3, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(Alter, E).
;; 7
%waid:3, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(Alter, E).
;; 8
%waid:3, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), daughter(Alter, H).
;; 9
%waid:3, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), daughter(Alter, H).
;; 10
%waid:3, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), daughter(Alter, H).
;; 11
%waid:3, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), daughter(Alter, H).
;; 12
%waid:2, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 13
%waid:2, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 14
%waid:2, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 15
%waid:3, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(Alter, E).
;; 16
%waid:3, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(Alter, E).
;; 17
%waid:3, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), daughter(Alter, H).
;; 18
%waid:3, para_gen[aux]462:1, parents:0, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), daughter(Alter, H).
;; 19
%waid:3, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), son(H, F), daughter(Alter, H).
;; 20
%waid:3, para_gen[aux]462:1, parents:1, para_gen[aux]462:0, sibling:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, Ego), gender(G, F), daughter(H, F), daughter(Alter, H).


x_gen[aux]46(Alter, Ego) :-  parents(A, Ego), generation[aux]46(B, A), child(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
                         |   parents(A, Ego), parents(B, A), generation[aux]46(B, C), children(D, C), child(Alter, D), gender(E, B), gender(F, C), not(equal(E, F)).
;; 0
%x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 2
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 3
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 4
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 5
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 6
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 7
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 8
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 9
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 10
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 11
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 12
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 13
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 14
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 15
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 16
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 17
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 18
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 19
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 20
%x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 21
%x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 22
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 23
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 24
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 25
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 26
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 27
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 28
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 29
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 30
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 31
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 32
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 33
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 34
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 35
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 36
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 37
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 38
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 39
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 40
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 41
%x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 42
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 43
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 44
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 45
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 46
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 47
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 48
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 49
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 50
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 51
%x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 52
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 53
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 54
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 55
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 56
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 57
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 58
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 59
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 60
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 61
%x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 62
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 63
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 64
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 65
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 66
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 67
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 68
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 69
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 70
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 71
%x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 72
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 73
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 74
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 75
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 76
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 77
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 78
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 79
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 80
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 81
%x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).


x_rule2[aux]46down(Alter, Ego) :-  x_square[aux]462down(Alter, Ego).
                               |   parents(A, Ego), x_gen[aux]46(Alter, A).
;; 0
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 2
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 3
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 4
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 5
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 6
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 7
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 8
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 9
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 10
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 11
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 12
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 13
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 14
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 15
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 16
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 17
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 18
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 19
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 20
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 21
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 22
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 23
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 24
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 25
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 26
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 27
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 28
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 29
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 30
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 31
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 32
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 33
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 34
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 35
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 36
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 37
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 38
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 39
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 40
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 41
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 42
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 43
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 44
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 45
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 46
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 47
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 48
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 49
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 50
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 51
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 52
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 53
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 54
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 55
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 56
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 57
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 58
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 59
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 60
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 61
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 62
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 63
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 64
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 65
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 66
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 67
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 68
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 69
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 70
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 71
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 72
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 73
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 74
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 75
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 76
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 77
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 78
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 79
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 80
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 81
%x_rule2[aux]46down:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 82
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 83
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 84
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 85
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 86
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 87
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 88
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 89
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 90
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 91
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 92
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 93
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 94
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 95
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 96
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 97
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 98
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 99
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 100
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 101
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 102
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 103
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 104
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 105
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 106
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 107
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 108
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 109
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 110
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 111
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 112
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 113
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 114
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 115
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 116
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 117
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 118
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 119
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 120
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 121
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 122
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 123
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 124
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 125
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 126
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 127
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 128
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 129
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 130
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 131
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 132
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 133
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 134
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 135
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 136
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 137
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 138
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 139
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 140
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 141
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 142
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 143
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 144
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 145
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 146
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 147
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 148
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 149
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 150
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 151
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 152
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 153
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 154
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 155
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 156
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 157
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 158
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 159
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 160
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 161
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 162
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 163
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 164
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 165
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 166
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 167
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 168
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 169
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 170
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 171
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 172
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 173
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 174
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 175
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 176
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 177
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 178
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 179
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 180
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 181
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 182
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 183
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 184
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 185
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 186
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 187
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 188
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 189
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 190
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 191
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 192
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 193
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 194
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 195
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 196
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 197
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 198
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 199
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 200
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 201
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 202
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 203
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 204
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 205
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 206
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 207
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 208
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 209
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 210
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 211
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 212
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 213
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 214
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 215
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 216
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 217
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 218
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 219
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 220
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 221
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 222
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 223
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 224
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 225
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 226
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 227
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 228
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 229
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 230
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 231
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 232
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 233
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 234
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 235
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 236
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 237
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 238
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 239
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 240
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 241
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 242
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 243
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 244
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 245
%x_rule2[aux]46down:0, x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 246
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 247
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 248
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 249
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 250
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 251
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 252
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 253
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 254
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 255
%x_rule2[aux]46down:1, parents:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 256
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 257
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 258
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 259
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 260
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 261
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 262
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 263
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 264
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 265
%x_rule2[aux]46down:1, parents:1, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).


x_square[aux]462down(Alter, Ego) :-  x_gen[aux]46(Alter, Ego).
                                 |   children(A, Ego), x_square[aux]462down(Alter, A).
;; 0
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 1
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 2
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 3
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 4
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 5
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 6
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 7
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 8
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 9
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 10
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 11
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 12
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 13
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 14
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 15
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 16
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 17
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 18
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 19
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 20
%x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 21
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D), gender(E, A), gender(F, D), not(equal(E, F)).
;; 22
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 23
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 24
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 25
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 26
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 27
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 28
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 29
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 30
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 31
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 32
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 33
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(F, E), child(Alter, F), gender(G, A), gender(H, F), not(equal(G, H)).
;; 34
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 35
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 36
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 37
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 38
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 39
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 40
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 41
%x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(H, G), child(Alter, H), gender(I, A), gender(J, H), not(equal(I, J)).
;; 42
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 43
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 44
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 45
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 46
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 47
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 48
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 49
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 50
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 51
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 52
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 53
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 54
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 55
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 56
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 57
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 58
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 59
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 60
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 61
%x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 62
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 63
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 64
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 65
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 66
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 67
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 68
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 69
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 70
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 71
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 72
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 73
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(F, D), child(Alter, F), gender(G, B), gender(H, D), not(equal(G, H)).
;; 74
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 75
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 76
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 77
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 78
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 79
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 80
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), son(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 81
%x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), child(B, G), daughter(H, D), child(Alter, H), gender(I, B), gender(J, D), not(equal(I, J)).
;; 82
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 83
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 84
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 85
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 86
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 87
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 88
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 89
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 90
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 91
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 92
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 93
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 94
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 95
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 96
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 97
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 98
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 99
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 100
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 101
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 102
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 103
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 104
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 105
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 106
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 107
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 108
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 109
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 110
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 111
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 112
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 113
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 114
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 115
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 116
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 117
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 118
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 119
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 120
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 121
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 122
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 123
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 124
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 125
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 126
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 127
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 128
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 129
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 130
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 131
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 132
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 133
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 134
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 135
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 136
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 137
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 138
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 139
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 140
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 141
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 142
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 143
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 144
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 145
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 146
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 147
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 148
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 149
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 150
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 151
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 152
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 153
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 154
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 155
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 156
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 157
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 158
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 159
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 160
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 161
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 162
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 163
%x_square[aux]462down:1, children:0, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 164
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 165
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 166
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 167
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 168
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 169
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 170
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 171
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 172
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 173
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 174
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 175
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 176
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 177
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 178
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 179
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 180
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 181
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 182
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 183
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 184
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 185
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(F, B), gender(G, E), not(equal(F, G)).
;; 186
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 187
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 188
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 189
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 190
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 191
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 192
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 193
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 194
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 195
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 196
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 197
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(G, F), child(Alter, G), gender(H, B), gender(I, G), not(equal(H, I)).
;; 198
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 199
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 200
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 201
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 202
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 203
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 204
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 205
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(I, H), child(Alter, I), gender(J, B), gender(K, I), not(equal(J, K)).
;; 206
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 207
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 208
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 209
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 210
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 211
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 212
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 213
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 214
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 215
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 216
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 217
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 218
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 219
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 220
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 221
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 222
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 223
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 224
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 225
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:0, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), mother(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 226
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 227
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 228
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 229
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 230
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 231
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 232
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 233
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 234
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 235
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:0, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), mother(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 236
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), son(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 237
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), daughter(G, E), child(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 238
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 239
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 240
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 241
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:0, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 242
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 243
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 244
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), son(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).
;; 245
%x_square[aux]462down:1, children:1, x_square[aux]462down:0, x_gen[aux]46:1, parents:1, parents:1, generation[aux]46:1, parents:1, generation[aux]46gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), father(B, A), father(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), child(C, H), daughter(I, E), child(Alter, I), gender(J, C), gender(K, E), not(equal(J, K)).


yeey(Alter, Ego) :-  koko(Ego, Alter), female(Alter).
{"FaBroDaDa_FaFaBroSoDaDa_FaMoSisSoDaDa_MoFaBroDaDaDa_MoMoSisDaDaDa_MoSisDaDa_SisDa"}
;; 0
%yeey:0, koko:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 1
%yeey:0, koko:1, para_gen[aux]461:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 2
%yeey:0, koko:1, para_gen[aux]461:1, parents:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 3
%yeey:0, koko:1, para_gen[aux]461:1, parents:1, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 4
%yeey:0, koko:1, para_gen[aux]461:2, parents:0, parents:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), female(Alter).
;; 5
%yeey:0, koko:1, para_gen[aux]461:2, parents:0, parents:1, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), female(Alter).
;; 6
%yeey:0, koko:1, para_gen[aux]461:2, parents:1, parents:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), female(Alter).
;; 7
%yeey:0, koko:1, para_gen[aux]461:2, parents:1, parents:1, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), gender(H, B), gender(H, G), gender(I, C), gender(I, F), child(Ego, G), male(Ego), female(Alter).

