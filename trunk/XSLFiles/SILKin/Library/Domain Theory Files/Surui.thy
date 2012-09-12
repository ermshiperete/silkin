;;  Horn Clause Representation of Surui Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Surui") (author, "Carolyn Bontkes") (date, "1985-01-01") (citation, "Carolyn Bontkes in SOUTH AMERICAN KINSHIP pp. 28-30") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(overlaps, (lano, (ngarmay, ngoranam)), (lerad, (mug, waid)), (loa, (ngarmay, ngoranam)), (mahd, (ngarmay, ngoranam)), (mahdapid, (mug)), (mug, (lerad, mahdapid)), (ngarmay, (lano, loa, mahd)), (ngoranam, (lano, loa, mahd)), (waid, (lerad)))
(umbrellas, (mor, (ngoranam, ngarmay, loa, mahd, lano)), (mug, (nem, amoy, waid)), (om, (mari)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

amo(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                |  [ext],  parents(A, Ego), parents(B, A), square[aux]471(Alter, B), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaBroSo_FaFaFaFaBroSoSo_FaFaFaFaFa_FaFaFaFaFaFa_FaFaFaFaMoFa_FaFaFaMoFa_FaFaFaMoFaFa_FaFaFaMoMoFa_FaFaFaMoSisSo_FaFaFaMoSisSoSo_FaFaMoFa_FaFaMoFaBro_FaFaMoFaBroDaSo_FaFaMoFaFa_FaFaMoFaFaFa_FaFaMoFaMoFa_FaFaMoMoFa_FaFaMoMoFaFa_FaFaMoMoMoFa_FaFaMoMoSisDaSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBro_FaMoFaFaBroSo_FaMoFaFaBroSoSo_FaMoFaFaFa_FaMoFaFaFaFa_FaMoFaFaMoFa_FaMoFaMoFa_FaMoFaMoFaFa_FaMoFaMoMoFa_FaMoFaMoSisSo_FaMoFaMoSisSoSo_FaMoMoFa_FaMoMoFaBro_FaMoMoFaBroDaSo_FaMoMoFaFa_FaMoMoFaFaFa_FaMoMoFaMoFa_FaMoMoMoFa_FaMoMoMoFaFa_FaMoMoMoMoFa_FaMoMoMoSisDaSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBro_MoFaFaFaBroSo_MoFaFaFaBroSoSo_MoFaFaFaFa_MoFaFaFaFaFa_MoFaFaFaMoFa_MoFaFaMoFa_MoFaFaMoFaFa_MoFaFaMoMoFa_MoFaFaMoSisSo_MoFaFaMoSisSoSo_MoFaMoFa_MoFaMoFaBro_MoFaMoFaBroDaSo_MoFaMoFaFa_MoFaMoFaFaFa_MoFaMoFaMoFa_MoFaMoMoFa_MoFaMoMoFaFa_MoFaMoMoMoFa_MoFaMoMoSisDaSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBro_MoMoFaFaBroSo_MoMoFaFaBroSoSo_MoMoFaFaFa_MoMoFaFaFaFa_MoMoFaFaMoFa_MoMoFaMoFa_MoMoFaMoFaFa_MoMoFaMoMoFa_MoMoFaMoSisSo_MoMoFaMoSisSoSo_MoMoMoFa_MoMoMoFaBro_MoMoMoFaBroDaSo_MoMoMoFaFa_MoMoMoFaFaFa_MoMoMoFaMoFa_MoMoMoMoFa_MoMoMoMoFaFa_MoMoMoMoMoFa_MoMoMoMoSisDaSo_MoMoMoSisSo"}
;; 0
%amo:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%amo:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 4
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 5
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 6
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 7
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 8
%amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 9
%amo:1, parents:0, parents:0, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 10
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 11
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 12
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 13
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 14
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 15
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 16
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 17
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 18
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), male(Alter).
;; 19
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 20
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 21
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 22
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 23
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 24
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 25
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoFaFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), male(Alter).
;; 26
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoFaMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 27
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoMoFaFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 28
%amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoMoMoFa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 29
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 30
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 31
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 32
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 33
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 34
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 35
%amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 36
%amo:1, parents:0, parents:1, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 37
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 38
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 39
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 40
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 41
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 42
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 43
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 44
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 45
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), male(Alter).
;; 46
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 47
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaMoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 48
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaMoMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 49
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 50
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 51
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 52
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoFaFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), male(Alter).
;; 53
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoFaMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 54
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoMoFaFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 55
%amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoMoMoFa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 56
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 57
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 58
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 59
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 60
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 61
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 62
%amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 63
%amo:1, parents:1, parents:0, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 64
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 65
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 66
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 67
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 68
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 69
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 70
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 71
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 72
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaFaFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), male(Alter).
;; 73
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaFaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 74
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 75
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 76
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 77
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 78
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 79
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoFaFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), male(Alter).
;; 80
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoFaMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 81
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoMoFaFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 82
%amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoMoMoFa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 83
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 84
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 85
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 86
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 87
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 88
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 89
%amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), male(Alter).
;; 90
%amo:1, parents:1, parents:1, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 91
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), male(Alter).
;; 92
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 93
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), male(Alter).
;; 94
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, Alter), male(Alter).
;; 95
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), male(Alter).
;; 96
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 97
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), male(Alter).
;; 98
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), male(Alter).
;; 99
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), male(Alter).
;; 100
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 101
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaMoFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 102
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaMoMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), male(Alter).
;; 103
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), male(Alter).
;; 104
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), male(Alter).
;; 105
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), male(Alter).
;; 106
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoFaFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), male(Alter).
;; 107
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoFaMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), male(Alter).
;; 108
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoMoFaFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), male(Alter).
;; 109
%amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoMoMoFa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), male(Alter).


amoy(Alter, Ego) :-  son(Alter, Ego), female(Ego).
                 |  [ext],  female(Ego), para_gen[aux]472(A, Ego), son(Alter, A).
{"FaBroDaSo_FaFaBroSoDaSo_FaMoSisSoDaSo_MoFaBroDaDaSo_MoMoSisDaDaSo_MoSisDaSo_SisSo_So"}
;; 0
%amoy:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego), female(Ego).
;; 1
%amoy:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 2
%amoy:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 3
%amoy:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 4
%amoy:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 5
%amoy:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 6
%amoy:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 7
%amoy:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).


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


generation[aux]47(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]47gs(B, A), child(Alter, B).
;; 0
%generation[aux]47:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]47:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]47:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]47:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]47:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]47:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]47:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]47gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]47gs(B, A), children(Alter, B).
;; 0
%generation[aux]47gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]47gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]47gs:1, parents:0, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:0, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]47gs:1, parents:1, generation[aux]47gs:1, parents:1, generation[aux]47gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]47junior(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]47junior(B, A), child(Alter, B).
;; 0
%generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%generation[aux]47junior:1, parents:0, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 2
%generation[aux]47junior:1, parents:0, generation[aux]47junior:1, parents:0, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]47junior:1, parents:0, generation[aux]47junior:1, parents:1, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]47junior:1, parents:1, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), child(Alter, D).
;; 5
%generation[aux]47junior:1, parents:1, generation[aux]47junior:1, parents:0, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]47junior:1, parents:1, generation[aux]47junior:1, parents:1, generation[aux]47junior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), child(F, E), child(Alter, F).


generation[aux]47senior(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                    |   parents(A, Ego), generation[aux]47senior(B, A), child(Alter, B).
;; 0
%generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%generation[aux]47senior:1, parents:0, generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 2
%generation[aux]47senior:1, parents:0, generation[aux]47senior:1, parents:0, generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 3
%generation[aux]47senior:1, parents:0, generation[aux]47senior:1, parents:1, generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 4
%generation[aux]47senior:1, parents:1, generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), child(Alter, D).
;; 5
%generation[aux]47senior:1, parents:1, generation[aux]47senior:1, parents:0, generation[aux]47senior:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), child(F, E), child(Alter, F).
;; 6
%generation[aux]47senior:1, parents:1, generation[aux]47senior:1, parents:1, generation[aux]47senior:0, sibling:0%
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


lano(Alter, Ego) :-  gender(A, Ego), parents(B, Ego), sibling(C, B), child(Alter, C), gender(A, Alter), gender(D, B), gender(D, C).
                 |  [ext],  gender(A, Ego), parents(B, Ego), parents(C, B), para_gen[aux]472(D, C), child(E, D), child(Alter, E), gender(A, Alter), gender(F, B), gender(F, E).
{"FaBroDa_FaBroSo_FaFaBroSoDa_FaFaBroSoSo_FaFaFaBroSoSoDa_FaFaFaBroSoSoSo_FaFaMoSisSoSoDa_FaFaMoSisSoSoSo_FaMoFaBroDaSoDa_FaMoFaBroDaSoSo_FaMoMoSisDaSoDa_FaMoMoSisDaSoSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaFaBroSoDaDa_MoFaFaBroSoDaSo_MoFaMoSisSoDaDa_MoFaMoSisSoDaSo_MoMoFaBroDaDaDa_MoMoFaBroDaDaSo_MoMoMoSisDaDaDa_MoMoMoSisDaDaSo_MoMoSisDaDa_MoMoSisDaSo_MoSisDa_MoSisSo"}
;; 0
%lano:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
 male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(A, Alter), gender(F, B), gender(F, E).
;; 1
%lano:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
 male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(A, Alter), gender(F, B), gender(F, E).
;; 2
%lano:1, parents:0, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 3
%lano:1, parents:0, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 4
%lano:1, parents:0, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 5
%lano:1, parents:0, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 6
%lano:1, parents:0, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 7
%lano:1, parents:0, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  male(Ego), gender(A, Ego), mother(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 8
%lano:1, parents:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 9
%lano:1, parents:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 10
%lano:1, parents:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 11
%lano:1, parents:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 12
%lano:1, parents:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 13
%lano:1, parents:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  male(Ego), gender(A, Ego), father(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 14
%lano:0, parents:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
 female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(A, Alter), gender(F, B), gender(F, E).
;; 15
%lano:0, parents:1, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
 female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E), gender(A, Alter), gender(F, B), gender(F, E).
;; 16
%lano:1, parents:0, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 17
%lano:1, parents:0, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 18
%lano:1, parents:0, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 19
%lano:1, parents:0, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 20
%lano:1, parents:0, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 21
%lano:1, parents:0, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  female(Ego), gender(A, Ego), mother(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 22
%lano:1, parents:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 23
%lano:1, parents:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 24
%lano:1, parents:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 25
%lano:1, parents:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), child(Alter, H), gender(A, Alter), gender(I, B), gender(I, H).
;; 26
%lano:1, parents:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).
;; 27
%lano:1, parents:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  female(Ego), gender(A, Ego), father(B, Ego), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), child(Alter, L), gender(A, Alter), gender(M, B), gender(M, L).


lerad(Alter, Ego) :-  amo(Ego, Alter), male(Alter).
                  |   amo(Ego, Alter), female(Alter).
                  |   moya(Ego, Alter), female(Alter).
                  |   moya(Ego, Alter), male(Alter).
{"BroDa_BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaDaSo_BroDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSo_BroDaSoDa_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSo_BroDaSoSoDa_BroDaSoSoSo_BroSo_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSo_BroSoSoDa_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSo_BroSoSoSoDa_BroSoSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaDaDa_DaDaDaDaDaDa_DaDaDaDaDaSo_DaDaDaDaSo_DaDaDaDaSoDa_DaDaDaDaSoSo_DaDaDaSo_DaDaDaSoDa_DaDaDaSoDaDa_DaDaDaSoDaSo_DaDaDaSoSo_DaDaDaSoSoDa_DaDaDaSoSoSo_DaDaSo_DaDaSoDa_DaDaSoDaDa_DaDaSoDaDaDa_DaDaSoDaDaSo_DaDaSoDaSo_DaDaSoDaSoDa_DaDaSoDaSoSo_DaDaSoSo_DaDaSoSoDa_DaDaSoSoDaDa_DaDaSoSoDaSo_DaDaSoSoSo_DaDaSoSoSoDa_DaDaSoSoSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaDaDa_DaSoDaDaDaDa_DaSoDaDaDaSo_DaSoDaDaSo_DaSoDaDaSoDa_DaSoDaDaSoSo_DaSoDaSo_DaSoDaSoDa_DaSoDaSoDaDa_DaSoDaSoDaSo_DaSoDaSoSo_DaSoDaSoSoDa_DaSoDaSoSoSo_DaSoSo_DaSoSoDa_DaSoSoDaDa_DaSoSoDaDaDa_DaSoSoDaDaSo_DaSoSoDaSo_DaSoSoDaSoDa_DaSoSoDaSoSo_DaSoSoSo_DaSoSoSoDa_DaSoSoSoDaDa_DaSoSoSoDaSo_DaSoSoSoSo_DaSoSoSoSoDa_DaSoSoSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDa_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaFaBroSoDaDaDa_FaFaBroSoDaDaSo_FaFaBroSoDaSoDa_FaFaBroSoDaSoSo_FaFaBroSoSoDa_FaFaBroSoSoDaDa_FaFaBroSoSoDaSo_FaFaBroSoSoSo_FaFaBroSoSoSoDa_FaFaBroSoSoSoSo_FaFaFaBroSoSoSoDa_FaFaFaBroSoSoSoSo_FaFaMoSisSoSoSoDa_FaFaMoSisSoSoSoSo_FaMoFaBroDaSoSoDa_FaMoFaBroDaSoSoSo_FaMoMoSisDaSoSoDa_FaMoMoSisDaSoSoSo_FaMoSisSoDaDaDa_FaMoSisSoDaDaSo_FaMoSisSoDaSoDa_FaMoSisSoDaSoSo_FaMoSisSoSoDa_FaMoSisSoSoDaDa_FaMoSisSoSoDaSo_FaMoSisSoSoSo_FaMoSisSoSoSoDa_FaMoSisSoSoSoSo_MoFaBroDaDaDaDa_MoFaBroDaDaDaSo_MoFaBroDaDaSoDa_MoFaBroDaDaSoSo_MoFaBroDaSoDa_MoFaBroDaSoDaDa_MoFaBroDaSoDaSo_MoFaBroDaSoSo_MoFaBroDaSoSoDa_MoFaBroDaSoSoSo_MoFaFaBroSoDaSoDa_MoFaFaBroSoDaSoSo_MoFaMoSisSoDaSoDa_MoFaMoSisSoDaSoSo_MoMoFaBroDaDaSoDa_MoMoFaBroDaDaSoSo_MoMoMoSisDaDaSoDa_MoMoMoSisDaDaSoSo_MoMoSisDaDaDaDa_MoMoSisDaDaDaSo_MoMoSisDaDaSoDa_MoMoSisDaDaSoSo_MoMoSisDaSoDa_MoMoSisDaSoDaDa_MoMoSisDaSoDaSo_MoMoSisDaSoSo_MoMoSisDaSoSoDa_MoMoSisDaSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDa_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSo_SisDaSoDa_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSo_SisSoSoDa_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSo_SisSoSoSoDa_SisSoSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaDaDa_SoDaDaDaDaDa_SoDaDaDaDaSo_SoDaDaDaSo_SoDaDaDaSoDa_SoDaDaDaSoSo_SoDaDaSo_SoDaDaSoDa_SoDaDaSoDaDa_SoDaDaSoDaSo_SoDaDaSoSo_SoDaDaSoSoDa_SoDaDaSoSoSo_SoDaSo_SoDaSoDa_SoDaSoDaDa_SoDaSoDaDaDa_SoDaSoDaDaSo_SoDaSoDaSo_SoDaSoDaSoDa_SoDaSoDaSoSo_SoDaSoSo_SoDaSoSoDa_SoDaSoSoDaDa_SoDaSoSoDaSo_SoDaSoSoSo_SoDaSoSoSoDa_SoDaSoSoSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaDaDa_SoSoDaDaDaDa_SoSoDaDaDaSo_SoSoDaDaSo_SoSoDaDaSoDa_SoSoDaDaSoSo_SoSoDaSo_SoSoDaSoDa_SoSoDaSoDaDa_SoSoDaSoDaSo_SoSoDaSoSo_SoSoDaSoSoDa_SoSoDaSoSoSo_SoSoSo_SoSoSoDa_SoSoSoDaDa_SoSoSoDaDaDa_SoSoSoDaDaSo_SoSoSoDaSo_SoSoSoDaSoDa_SoSoSoDaSoSo_SoSoSoSo_SoSoSoSoDa_SoSoSoSoDaDa_SoSoSoSoDaSo_SoSoSoSoSo_SoSoSoSoSoDa_SoSoSoSoSoSo"}
;; 0
%lerad:0, amo:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), father(Ego, A), male(Alter).
;; 1
%lerad:0, amo:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), father(Ego, A), male(Alter).
;; 2
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 3
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 4
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 5
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 6
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 7
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 8
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 9
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 10
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), male(Alter).
;; 11
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 12
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 13
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, Ego), male(Ego), male(Alter).
;; 14
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), male(Ego), male(Alter).
;; 15
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 16
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), male(Alter).
;; 17
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 18
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 19
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 20
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 21
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 22
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 23
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), male(Alter).
;; 24
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 25
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 26
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 27
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 28
%lerad:0, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 29
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 30
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 31
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 32
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 33
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 34
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 35
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 36
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 37
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), male(Alter).
;; 38
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 39
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 40
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, Ego), male(Ego), male(Alter).
;; 41
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), male(Ego), male(Alter).
;; 42
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 43
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), male(Alter).
;; 44
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 45
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 46
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 47
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 48
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 49
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 50
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), male(Alter).
;; 51
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 52
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 53
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 54
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 55
%lerad:0, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 56
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 57
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 58
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 59
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 60
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 61
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 62
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 63
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 64
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), male(Alter).
;; 65
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 66
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 67
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, Ego), male(Ego), male(Alter).
;; 68
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), male(Ego), male(Alter).
;; 69
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 70
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), male(Alter).
;; 71
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 72
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 73
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 74
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 75
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 76
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 77
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), male(Alter).
;; 78
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 79
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 80
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 81
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 82
%lerad:0, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 83
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 84
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 85
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 86
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 87
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 88
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 89
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), male(Alter).
;; 90
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 91
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), male(Alter).
;; 92
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 93
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), male(Alter).
;; 94
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, Ego), male(Ego), male(Alter).
;; 95
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), male(Ego), male(Alter).
;; 96
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 97
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), male(Alter).
;; 98
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 99
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 100
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 101
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 102
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 103
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), male(Alter).
;; 104
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), male(Alter).
;; 105
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), male(Alter).
;; 106
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), male(Alter).
;; 107
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 108
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), male(Alter).
;; 109
%lerad:0, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), male(Alter).
;; 110
%lerad:1, amo:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), father(Ego, A), female(Alter).
;; 111
%lerad:1, amo:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), father(Ego, A), female(Alter).
;; 112
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 113
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 114
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 115
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 116
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 117
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 118
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 119
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 120
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), female(Alter).
;; 121
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 122
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 123
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, Ego), male(Ego), female(Alter).
;; 124
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), male(Ego), female(Alter).
;; 125
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 126
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), female(Alter).
;; 127
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 128
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 129
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 130
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 131
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 132
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 133
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), female(Alter).
;; 134
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 135
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 136
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 137
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 138
%lerad:1, amo:1, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 139
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 140
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 141
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 142
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 143
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 144
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 145
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 146
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 147
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), female(Alter).
;; 148
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 149
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 150
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, Ego), male(Ego), female(Alter).
;; 151
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), male(Ego), female(Alter).
;; 152
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 153
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), female(Alter).
;; 154
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 155
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 156
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 157
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 158
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 159
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 160
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), female(Alter).
;; 161
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 162
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 163
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 164
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 165
%lerad:1, amo:1, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 166
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 167
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 168
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 169
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 170
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 171
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 172
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 173
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 174
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), female(Alter).
;; 175
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 176
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 177
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, Ego), male(Ego), female(Alter).
;; 178
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), male(Ego), female(Alter).
;; 179
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 180
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), female(Alter).
;; 181
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 182
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 183
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 184
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 185
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 186
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 187
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), female(Alter).
;; 188
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 189
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 190
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 191
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 192
%lerad:1, amo:1, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 193
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 194
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 195
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 196
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 197
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 198
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 199
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), male(Ego), female(Alter).
;; 200
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 201
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), male(Ego), female(Alter).
;; 202
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 203
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), male(Ego), female(Alter).
;; 204
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, Ego), male(Ego), female(Alter).
;; 205
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), male(Ego), female(Alter).
;; 206
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 207
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), male(Ego), female(Alter).
;; 208
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 209
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 210
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 211
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 212
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 213
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), male(Ego), female(Alter).
;; 214
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), male(Ego), female(Alter).
;; 215
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), male(Ego), female(Alter).
;; 216
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), male(Ego), female(Alter).
;; 217
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 218
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), male(Ego), female(Alter).
;; 219
%lerad:1, amo:1, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), male(Ego), female(Alter).
;; 220
%lerad:2, moya:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), mother(Ego, A), female(Alter).
;; 221
%lerad:2, moya:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), mother(Ego, A), female(Alter).
;; 222
%lerad:2, moya:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), female(Alter).
;; 223
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 224
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 225
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 226
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 227
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 228
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 229
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 230
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 231
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), female(Alter).
;; 232
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 233
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 234
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, Ego), female(Ego), female(Alter).
;; 235
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), female(Ego), female(Alter).
;; 236
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 237
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), female(Alter).
;; 238
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 239
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 240
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 241
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 242
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 243
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 244
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), female(Alter).
;; 245
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 246
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 247
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 248
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 249
%lerad:2, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 250
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 251
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 252
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 253
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 254
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 255
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 256
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 257
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 258
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), female(Alter).
;; 259
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 260
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 261
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, Ego), female(Ego), female(Alter).
;; 262
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), female(Ego), female(Alter).
;; 263
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 264
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), female(Alter).
;; 265
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 266
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 267
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 268
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 269
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 270
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 271
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), female(Alter).
;; 272
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 273
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 274
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 275
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 276
%lerad:2, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 277
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 278
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 279
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 280
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 281
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 282
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 283
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 284
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 285
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), female(Alter).
;; 286
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 287
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 288
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, Ego), female(Ego), female(Alter).
;; 289
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), female(Ego), female(Alter).
;; 290
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 291
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), female(Alter).
;; 292
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 293
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 294
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 295
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 296
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 297
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 298
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), female(Alter).
;; 299
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 300
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 301
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 302
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 303
%lerad:2, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 304
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 305
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 306
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 307
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 308
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 309
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 310
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), female(Alter).
;; 311
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 312
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), female(Alter).
;; 313
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 314
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), female(Alter).
;; 315
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, Ego), female(Ego), female(Alter).
;; 316
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), female(Ego), female(Alter).
;; 317
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 318
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), female(Alter).
;; 319
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 320
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 321
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 322
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 323
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 324
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), female(Alter).
;; 325
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), female(Alter).
;; 326
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), female(Alter).
;; 327
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), female(Alter).
;; 328
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 329
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), female(Alter).
;; 330
%lerad:2, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), female(Alter).
;; 331
%lerad:2, moya:3, para_gen[aux]471:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), female(Alter).
;; 332
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), female(Alter).
;; 333
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), female(Alter).
;; 334
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 335
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 336
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), female(Alter).
;; 337
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 338
%lerad:2, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 339
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), female(Alter).
;; 340
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), female(Alter).
;; 341
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 342
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 343
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), female(Alter).
;; 344
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 345
%lerad:2, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoDa}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), female(Alter).
;; 346
%lerad:3, moya:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), mother(Ego, A), male(Alter).
;; 347
%lerad:3, moya:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), mother(Ego, A), male(Alter).
;; 348
%lerad:3, moya:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), male(Alter).
;; 349
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 350
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 351
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 352
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 353
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 354
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 355
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 356
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 357
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), male(Alter).
;; 358
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 359
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 360
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, Ego), female(Ego), male(Alter).
;; 361
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), female(Ego), male(Alter).
;; 362
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 363
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), male(Alter).
;; 364
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 365
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 366
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 367
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 368
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 369
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 370
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), male(Alter).
;; 371
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 372
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 373
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 374
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 375
%lerad:3, moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 376
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 377
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 378
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 379
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 380
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 381
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 382
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 383
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 384
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), male(Alter).
;; 385
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 386
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 387
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, Ego), female(Ego), male(Alter).
;; 388
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), female(Ego), male(Alter).
;; 389
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 390
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), male(Alter).
;; 391
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 392
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 393
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 394
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 395
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 396
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 397
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), male(Alter).
;; 398
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 399
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 400
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 401
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 402
%lerad:3, moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 403
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 404
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 405
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 406
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 407
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 408
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 409
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 410
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 411
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), male(Alter).
;; 412
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 413
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 414
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, Ego), female(Ego), male(Alter).
;; 415
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, Ego), female(Ego), male(Alter).
;; 416
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 417
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), male(Alter).
;; 418
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 419
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 420
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 421
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 422
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 423
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 424
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), male(Alter).
;; 425
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 426
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 427
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 428
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 429
%lerad:3, moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 430
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 431
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 432
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoMoSisDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 433
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {MoFaBroDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 434
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 435
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaMoSisSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 436
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-2,  PC=10, S=0, Star=0,  {FaFaBroSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Ego, I), female(Ego), male(Alter).
;; 437
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 438
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), gender(F, Ego), gender(F, C), female(Ego), male(Alter).
;; 439
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 440
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Ego, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Ego), female(Ego), male(Alter).
;; 441
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, Ego), female(Ego), male(Alter).
;; 442
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, Ego), female(Ego), male(Alter).
;; 443
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 444
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, Ego), female(Ego), male(Alter).
;; 445
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 446
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 447
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 448
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 449
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 450
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), gender(G, Ego), gender(G, D), female(Ego), male(Alter).
;; 451
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, Ego), female(Ego), male(Alter).
;; 452
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, Ego), female(Ego), male(Alter).
;; 453
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoSoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Ego), female(Ego), male(Alter).
;; 454
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaSoDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 455
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=-6,  PC=6, S=0, Star=0,  {SoDaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Ego), female(Ego), male(Alter).
;; 456
%lerad:3, moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=-6,  PC=6, S=0, Star=0,  {DaDaDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Ego), female(Ego), male(Alter).
;; 457
%lerad:3, moya:3, para_gen[aux]471:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), male(Alter).
;; 458
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), male(Alter).
;; 459
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), male(Alter).
;; 460
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 461
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 462
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), male(Alter).
;; 463
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 464
%lerad:3, moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
[ext], [ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 465
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), male(Alter).
;; 466
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), male(Alter).
;; 467
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 468
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 469
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), female(Ego), male(Alter).
;; 470
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).
;; 471
%lerad:3, moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoSo}  
[ext], [ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), female(Ego), male(Alter).


loa(Alter, Ego) :-  female(Ego), brother(Alter, Ego).
                |   female(Ego), para_gen[aux]471(Alter, Ego), male(Alter).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaFaBroSoSoSo_FaFaMoSisSoSoSo_FaMoFaBroDaSoSo_FaMoMoSisDaSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaFaBroSoDaSo_MoFaMoSisSoDaSo_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%loa:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%loa:1, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 2
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 3
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 4
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 5
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 6
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 7
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 8
%loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 9
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 10
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 11
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 12
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 13
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 14
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 15
%loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).


lob(Alter, Ego) :-  father(Alter, Ego).
                |  [ext],  father(A, Ego), para_gen[aux]472(Alter, A).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoFaBroDaSo_FaMoMoSisDaSo_FaMoSisSo"}
;; 0
%lob:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%lob:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 2
%lob:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 3
%lob:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 4
%lob:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 5
%lob:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 6
%lob:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 7
%lob:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).


mahd(Alter, Ego) :-  loa(Ego, Alter).
{"FaBroDa_FaFaBroSoDa_FaFaFaBroSoSoDa_FaFaMoSisSoSoDa_FaMoFaBroDaSoDa_FaMoMoSisDaSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaFaBroSoDaDa_MoFaMoSisSoDaDa_MoMoFaBroDaDaDa_MoMoMoSisDaDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%mahd:0, loa:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Alter), mother(A, Alter), father(B, Alter), child(Ego, A), child(Ego, B), not(equal(Ego, Alter)), male(Ego).
;; 1
%mahd:0, loa:1, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Alter), mother(A, Alter), father(B, Alter), child(Ego, A), child(Ego, B), not(equal(Ego, Alter)), male(Ego).
;; 2
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Ego, D), male(Ego).
;; 3
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Ego, G), male(Ego).
;; 4
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 5
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 6
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Ego, G), male(Ego).
;; 7
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 8
%mahd:0, loa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  female(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 9
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  female(Alter), father(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Ego, D), male(Ego).
;; 10
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Ego, G), male(Ego).
;; 11
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 12
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  female(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 13
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Ego, G), male(Ego).
;; 14
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).
;; 15
%mahd:0, loa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  female(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Ego, K), male(Ego).


mahdapid(Alter, Ego) :-  nisoa(Ego, Alter), male(Alter).
                     |   nisoa(Ego, Alter), female(Alter).
{"FaBroDaDa_FaBroDaSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaFaBroSoSoDaDa_FaFaFaBroSoSoDaSo_FaFaMoSisSoSoDaDa_FaFaMoSisSoSoDaSo_FaMoFaBroDaSoDaDa_FaMoFaBroDaSoDaSo_FaMoMoSisDaSoDaDa_FaMoMoSisDaSoDaSo_FaMoSisSoDaDa_FaMoSisSoDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaFaBroSoDaDaDa_MoFaFaBroSoDaDaSo_MoFaMoSisSoDaDaDa_MoFaMoSisSoDaDaSo_MoMoFaBroDaDaDaDa_MoMoFaBroDaDaDaSo_MoMoMoSisDaDaDaDa_MoMoMoSisDaDaDaSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%mahdapid:0, nisoa:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 1
%mahdapid:0, nisoa:1, para_gen[aux]471:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 2
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 3
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), male(Alter).
;; 4
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 5
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 6
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), male(Alter).
;; 7
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 8
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 9
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 10
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), male(Alter).
;; 11
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 12
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 13
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), male(Alter).
;; 14
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 15
%mahdapid:0, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaSo}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), male(Alter).
;; 16
%mahdapid:1, nisoa:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 17
%mahdapid:1, nisoa:1, para_gen[aux]471:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 18
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 19
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), female(Alter).
;; 20
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 21
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 22
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), female(Alter).
;; 23
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 24
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
[ext], [ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 25
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 26
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), female(Alter).
;; 27
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 28
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 29
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Ego, H), male(Ego), female(Alter).
;; 30
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).
;; 31
%mahdapid:1, nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaDa}  
[ext], [ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Ego, L), male(Ego), female(Alter).


mari(Alter, Ego) :-  wife(A, Ego), siblings(Alter, A).
                 |   husband(A, Ego), siblings(Alter, A).
                 |   siblings(A, Ego), spouse(Alter, A).
{"BroWi_HuBro_HuSis_SisHu_WiBro_WiSis"}
;; 0
%mari:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%mari:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%mari:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%mari:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 4
%mari:2, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(Alter, C).
;; 5
%mari:2, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(Alter, C).


mayxan(Alter, Ego) :-  parents(A, Ego), gender(B, A), sibling(A, C), gender(D, C), children(Alter, C), not(equal(B, D)).
                   |  [ext],  parents(A, Ego), gender(B, A), parents(C, A), sibling(C, D), parents(D, E), gender(F, E), children(Alter, E), not(equal(B, F)).
                   |  [ext],  parents(A, Ego), gender(B, A), parents(C, A), sibling(C, D), parent(D, E), gender(B, E), children(Alter, E), gender(F, C), gender(G, D), not(equal(F, G)).
                   |  [ext],  parents(A, Ego), parents(B, A), sibling(B, C), children(Alter, C), gender(D, B), gender(E, C), not(equal(D, E)).
                   |  [ext],  parents(A, Ego), sibling(B, A), children(C, B), children(Alter, C), gender(D, B), gender(E, A), not(equal(D, E)).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaSisDa_FaFaSisDaDa_FaFaSisDaSo_FaFaSisSo_FaFaSisSoDa_FaFaSisSoSo_FaMoBroDa_FaMoBroDaDa_FaMoBroDaSo_FaMoBroSo_FaMoBroSoDa_FaMoBroSoSo_FaMoSisDaDa_FaMoSisDaSo_FaSisDa_FaSisDaDa_FaSisDaSo_FaSisSo_FaSisSoDa_FaSisSoSo_MoBroDa_MoBroDaDa_MoBroDaSo_MoBroSo_MoBroSoDa_MoBroSoSo_MoFaBroSoDa_MoFaBroSoSo_MoFaSisDa_MoFaSisDaDa_MoFaSisDaSo_MoFaSisSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroDa_MoMoBroDaDa_MoMoBroDaSo_MoMoBroSo_MoMoBroSoDa_MoMoBroSoSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%mayxan:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), gender(B, A), mother(C, D), father(E, D), child(A, C), child(A, E), not(equal(A, D)), gender(F, D), son(Alter, D), not(equal(B, F)).
;; 1
%mayxan:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), gender(B, A), mother(C, D), father(E, D), child(A, C), child(A, E), not(equal(A, D)), gender(F, D), daughter(Alter, D), not(equal(B, F)).
;; 2
%mayxan:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), gender(B, A), mother(C, D), father(E, D), child(A, C), child(A, E), not(equal(A, D)), gender(F, D), son(Alter, D), not(equal(B, F)).
;; 3
%mayxan:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), gender(B, A), mother(C, D), father(E, D), child(A, C), child(A, E), not(equal(A, D)), gender(F, D), daughter(Alter, D), not(equal(B, F)).
;; 4
%mayxan:1, parents:0, parents:0, sibling:0, parents:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 5
%mayxan:1, parents:0, parents:0, sibling:0, parents:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 6
%mayxan:1, parents:0, parents:0, sibling:0, parents:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 7
%mayxan:1, parents:0, parents:0, sibling:0, parents:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 8
%mayxan:1, parents:0, parents:1, sibling:0, parents:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 9
%mayxan:1, parents:0, parents:1, sibling:0, parents:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 10
%mayxan:1, parents:0, parents:1, sibling:0, parents:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 11
%mayxan:1, parents:0, parents:1, sibling:0, parents:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 12
%mayxan:1, parents:1, parents:0, sibling:0, parents:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 13
%mayxan:1, parents:1, parents:0, sibling:0, parents:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 14
%mayxan:1, parents:1, parents:0, sibling:0, parents:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 15
%mayxan:1, parents:1, parents:0, sibling:0, parents:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 16
%mayxan:1, parents:1, parents:1, sibling:0, parents:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 17
%mayxan:1, parents:1, parents:1, sibling:0, parents:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), mother(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 18
%mayxan:1, parents:1, parents:1, sibling:0, parents:1, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), son(Alter, G), not(equal(B, H)).
;; 19
%mayxan:1, parents:1, parents:1, sibling:0, parents:1, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), father(E, G), gender(H, G), daughter(Alter, G), not(equal(B, H)).
;; 20
%mayxan:2, parents:0, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), son(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 21
%mayxan:2, parents:0, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), daughter(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 22
%mayxan:2, parents:0, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), son(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 23
%mayxan:2, parents:0, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  mother(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), daughter(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 24
%mayxan:2, parents:1, parents:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), son(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 25
%mayxan:2, parents:1, parents:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), gender(B, A), mother(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), daughter(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 26
%mayxan:2, parents:1, parents:1, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), son(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 27
%mayxan:2, parents:1, parents:1, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  father(A, Ego), gender(B, A), father(C, A), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), parent(E, G), gender(B, G), daughter(Alter, G), gender(H, C), gender(I, E), not(equal(H, I)).
;; 28
%mayxan:3, parents:0, parents:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 29
%mayxan:3, parents:0, parents:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 30
%mayxan:3, parents:0, parents:1, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 31
%mayxan:3, parents:0, parents:1, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 32
%mayxan:3, parents:1, parents:0, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 33
%mayxan:3, parents:1, parents:0, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 34
%mayxan:3, parents:1, parents:1, sibling:0, children:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), son(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 35
%mayxan:3, parents:1, parents:1, sibling:0, children:1%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), daughter(Alter, D), gender(F, B), gender(G, D), not(equal(F, G)).
;; 36
%mayxan:4, parents:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), son(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 37
%mayxan:4, parents:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), daughter(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 38
%mayxan:4, parents:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), son(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 39
%mayxan:4, parents:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), daughter(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 40
%mayxan:4, parents:1, sibling:0, children:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), son(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 41
%mayxan:4, parents:1, sibling:0, children:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), son(E, D), daughter(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 42
%mayxan:4, parents:1, sibling:0, children:1, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), son(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).
;; 43
%mayxan:4, parents:1, sibling:0, children:1, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), daughter(E, D), daughter(Alter, E), gender(F, D), gender(G, A), not(equal(F, G)).


mor(Alter, Ego) :-  para_gen[aux]471(Alter, Ego), male(Alter).
                |   para_gen[aux]471(Alter, Ego), female(Alter).
{"Bro_FaBroDa_FaBroSo_FaFaBroSoDa_FaFaBroSoSo_FaFaFaBroSoSoDa_FaFaFaBroSoSoSo_FaFaMoSisSoSoDa_FaFaMoSisSoSoSo_FaMoFaBroDaSoDa_FaMoFaBroDaSoSo_FaMoMoSisDaSoDa_FaMoMoSisDaSoSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaFaBroSoDaDa_MoFaFaBroSoDaSo_MoFaMoSisSoDaDa_MoFaMoSisSoDaSo_MoMoFaBroDaDaDa_MoMoFaBroDaDaSo_MoMoMoSisDaDaDa_MoMoMoSisDaDaSo_MoMoSisDaDa_MoMoSisDaSo_MoSisDa_MoSisSo_Sis"}
;; 0
%mor:0, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 2
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 3
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 4
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 5
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 6
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 7
%mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 8
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 9
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 10
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 11
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 12
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter).
;; 13
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 14
%mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter).
;; 15
%mor:1, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 16
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 17
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter).
;; 18
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 19
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 20
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter).
;; 21
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 22
%mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 23
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 24
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter).
;; 25
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 26
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 27
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter).
;; 28
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).
;; 29
%mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter).


moya(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                 |   father(A, Ego), sister(Alter, A).
                 |  [ext],  parents(A, Ego), parents(B, A), square[aux]471(Alter, B), female(Alter).
                 |  [ext],  father(A, Ego), para_gen[aux]471(Alter, A), female(Alter).
{"FaFaBroDa_FaFaFaBroDa_FaFaFaBroSoDa_FaFaFaFaBroSoDa_FaFaFaFaBroSoSoDa_FaFaFaFaFaMo_FaFaFaFaMo_FaFaFaFaMoMo_FaFaFaMo_FaFaFaMoFaMo_FaFaFaMoMo_FaFaFaMoMoMo_FaFaFaMoSis_FaFaFaMoSisSoDa_FaFaFaMoSisSoSoDa_FaFaMo_FaFaMoFaBroDa_FaFaMoFaBroDaDa_FaFaMoFaBroDaSoDa_FaFaMoFaFaMo_FaFaMoFaMo_FaFaMoFaMoMo_FaFaMoMo_FaFaMoMoFaMo_FaFaMoMoMo_FaFaMoMoMoMo_FaFaMoMoSis_FaFaMoMoSisDa_FaFaMoMoSisDaDa_FaFaMoMoSisDaSoDa_FaFaMoSis_FaFaMoSisDa_FaFaMoSisSoDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaBroDaDa_FaMoFaFaBroSoDa_FaMoFaFaBroSoDaDa_FaMoFaFaFaMo_FaMoFaFaMo_FaMoFaFaMoMo_FaMoFaMo_FaMoFaMoFaMo_FaMoFaMoMo_FaMoFaMoMoMo_FaMoFaMoSis_FaMoFaMoSisSoDa_FaMoFaMoSisSoDaDa_FaMoMo_FaMoMoFaBroDa_FaMoMoFaBroDaDa_FaMoMoFaBroDaDaDa_FaMoMoFaFaMo_FaMoMoFaMo_FaMoMoFaMoMo_FaMoMoMo_FaMoMoMoFaMo_FaMoMoMoMo_FaMoMoMoMoMo_FaMoMoMoSis_FaMoMoMoSisDa_FaMoMoMoSisDaDa_FaMoMoMoSisDaDaDa_FaMoMoSis_FaMoMoSisDa_FaMoMoSisDaDa_FaMoSis_FaMoSisDa_FaSis_MoFaFaBroDa_MoFaFaFaBroSoDa_MoFaFaFaFaMo_MoFaFaFaMo_MoFaFaFaMoMo_MoFaFaMo_MoFaFaMoFaMo_MoFaFaMoMo_MoFaFaMoMoMo_MoFaFaMoSis_MoFaFaMoSisSoDa_MoFaMo_MoFaMoFaBroDa_MoFaMoFaBroDaDa_MoFaMoFaFaMo_MoFaMoFaMo_MoFaMoFaMoMo_MoFaMoMo_MoFaMoMoFaMo_MoFaMoMoMo_MoFaMoMoMoMo_MoFaMoMoSis_MoFaMoMoSisDa_MoFaMoMoSisDaDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroSoDa_MoMoFaFaFaMo_MoMoFaFaMo_MoMoFaFaMoMo_MoMoFaMo_MoMoFaMoFaMo_MoMoFaMoMo_MoMoFaMoMoMo_MoMoFaMoSis_MoMoFaMoSisSoDa_MoMoMo_MoMoMoFaBroDa_MoMoMoFaBroDaDa_MoMoMoFaFaMo_MoMoMoFaMo_MoMoMoFaMoMo_MoMoMoMo_MoMoMoMoFaMo_MoMoMoMoMo_MoMoMoMoMoMo_MoMoMoMoSis_MoMoMoMoSisDa_MoMoMoMoSisDaDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%moya:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%moya:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%moya:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 5
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 6
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 7
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 8
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 9
%moya:2, parents:0, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 10
%moya:2, parents:0, parents:0, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 11
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 12
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 13
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 14
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 15
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 16
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 17
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 18
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 19
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), female(Alter).
;; 20
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 21
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 22
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoFaMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 23
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 24
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 25
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 26
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoFaFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), female(Alter).
;; 27
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoFaMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 28
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoMoFaMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 29
%moya:2, parents:0, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoMoMoMoMoMo}  
[ext],  mother(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 30
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 31
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 32
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 33
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 34
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 35
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 36
%moya:2, parents:0, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoDa}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 37
%moya:2, parents:0, parents:1, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 38
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 39
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 40
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 41
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 42
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 43
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 44
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 45
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 46
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), female(Alter).
;; 47
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 48
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaMoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 49
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaFaMoMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 50
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 51
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 52
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 53
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoFaFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), female(Alter).
;; 54
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoFaMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 55
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoMoFaMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 56
%moya:2, parents:0, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {MoFaMoMoMoMo}  
[ext],  mother(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 57
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 58
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 59
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 60
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 61
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 62
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 63
%moya:2, parents:1, parents:0, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 64
%moya:2, parents:1, parents:0, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 65
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 66
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 67
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 68
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 69
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 70
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 71
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 72
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 73
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaFaFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), female(Alter).
;; 74
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaFaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 75
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 76
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoFaMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 77
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 78
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 79
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 80
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoFaFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), female(Alter).
;; 81
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoFaMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 82
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoMoFaMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 83
%moya:2, parents:1, parents:0, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaMoMoMoMoMo}  
[ext],  father(A, Ego), mother(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 84
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 85
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 86
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 87
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 88
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 89
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 90
%moya:2, parents:1, parents:1, square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), female(Alter).
;; 91
%moya:2, parents:1, parents:1, square[aux]471:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 92
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C), female(Alter).
;; 93
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 94
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), parent(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter), female(Alter).
;; 95
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:0%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, Alter), female(Alter).
;; 96
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:1, children:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, Alter), female(Alter).
;; 97
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 98
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, Alter), female(Alter).
;; 99
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, Alter), female(Alter).
;; 100
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), son(E, Alter), female(Alter).
;; 101
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 102
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaMoFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 103
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaFaMoMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), son(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 104
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), gender(G, Alter), gender(G, D), female(Alter).
;; 105
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, Alter), female(Alter).
;; 106
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, Alter), female(Alter).
;; 107
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoFaFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), son(E, Alter), female(Alter).
;; 108
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoFaMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), son(D, E), daughter(E, Alter), female(Alter).
;; 109
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoMoFaMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), son(E, Alter), female(Alter).
;; 110
%moya:2, parents:1, parents:1, square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=6,  PC=6, S=0, Star=0,  {FaFaMoMoMoMo}  
[ext],  father(A, Ego), father(B, A), parent(C, B), daughter(C, D), daughter(D, E), daughter(E, Alter), female(Alter).
;; 111
%moya:3, para_gen[aux]471:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 112
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 113
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), female(Alter).
;; 114
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 115
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoFaBroDaDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 116
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), female(Alter).
;; 117
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaMoSisSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 118
%moya:3, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaFaBroSoDaDa}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 119
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 120
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), female(Alter).
;; 121
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoMoSisDaSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 122
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoFaBroDaSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 123
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), female(Alter).
;; 124
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaMoSisSoSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).
;; 125
%moya:3, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaFaBroSoSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), female(Alter).


mug(Alter, Ego) :-  children(Alter, Ego).
                |  [ext],  para_gen[aux]472(A, Ego), children(Alter, A).
{"BroDa_BroSo_Da_FaBroDaDa_FaBroDaSo_FaBroSoDa_FaBroSoSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSoDa_FaMoSisSoSoSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoSisDaDa_MoSisDaSo_MoSisSoDa_MoSisSoSo_SisDa_SisSo_So"}
;; 0
%mug:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%mug:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 2
%mug:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 3
%mug:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 4
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 5
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 6
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 7
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 8
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 9
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 10
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 11
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 12
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 13
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 14
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 15
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 16
%mug:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 17
%mug:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 18
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 19
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 20
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 21
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 22
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 23
%mug:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 24
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 25
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 26
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 27
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 28
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 29
%mug:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).


nem(Alter, Ego) :-  son(Alter, Ego), male(Ego).
                |  [ext],  male(Ego), para_gen[aux]472(A, Ego), son(Alter, A).
{"BroSo_FaBroSoSo_FaFaBroSoSoSo_FaMoSisSoSoSo_MoFaBroDaSoSo_MoMoSisDaSoSo_MoSisSoSo_So"}
;; 0
%nem:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego), male(Ego).
;; 1
%nem:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(Alter, C).
;; 2
%nem:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 3
%nem:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 4
%nem:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 5
%nem:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), son(Alter, F).
;; 6
%nem:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).
;; 7
%nem:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), son(Alter, J).


ngarmay(Alter, Ego) :-  mor(Alter, Ego), younger(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroSoDa_FaFaBroSoSo_FaFaFaBroSoSoDa_FaFaFaBroSoSoSo_FaFaMoSisSoSoDa_FaFaMoSisSoSoSo_FaMoFaBroDaSoDa_FaMoFaBroDaSoSo_FaMoMoSisDaSoDa_FaMoMoSisDaSoSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaFaBroSoDaDa_MoFaFaBroSoDaSo_MoFaMoSisSoDaDa_MoFaMoSisSoDaSo_MoMoFaBroDaDaDa_MoMoFaBroDaDaSo_MoMoMoSisDaDaDa_MoMoMoSisDaDaSo_MoMoSisDaDa_MoMoSisDaSo_MoSisDa_MoSisSo_Sis"}
;; 0
%ngarmay:0, mor:0, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 2
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 3
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 4
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 5
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 6
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 7
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 8
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 9
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 10
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 11
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 12
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 13
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 14
%ngarmay:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), younger(Alter, Ego).
;; 15
%ngarmay:0, mor:1, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 16
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 17
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 18
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 19
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 20
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 21
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 22
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 23
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 24
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 25
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 26
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 27
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 28
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).
;; 29
%ngarmay:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), younger(Alter, Ego).


ngoranam(Alter, Ego) :-  mor(Alter, Ego), elder(Alter, Ego).
{"Bro_FaBroDa_FaBroSo_FaFaBroSoDa_FaFaBroSoSo_FaFaFaBroSoSoDa_FaFaFaBroSoSoSo_FaFaMoSisSoSoDa_FaFaMoSisSoSoSo_FaMoFaBroDaSoDa_FaMoFaBroDaSoSo_FaMoMoSisDaSoDa_FaMoMoSisDaSoSo_FaMoSisSoDa_FaMoSisSoSo_MoFaBroDaDa_MoFaBroDaSo_MoFaFaBroSoDaDa_MoFaFaBroSoDaSo_MoFaMoSisSoDaDa_MoFaMoSisSoDaSo_MoMoFaBroDaDaDa_MoMoFaBroDaDaSo_MoMoMoSisDaDaDa_MoMoMoSisDaDaSo_MoMoSisDaDa_MoMoSisDaSo_MoSisDa_MoSisSo_Sis"}
;; 0
%ngoranam:0, mor:0, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 2
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 3
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 4
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 5
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 6
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 7
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 8
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 9
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 10
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 11
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 12
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 13
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 14
%ngoranam:0, mor:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), male(Alter), elder(Alter, Ego).
;; 15
%ngoranam:0, mor:1, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 16
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 17
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 18
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 19
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 20
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 21
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 22
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 23
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 24
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 25
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 26
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 27
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 28
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).
;; 29
%ngoranam:0, mor:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K), female(Alter), elder(Alter, Ego).


ni(Alter, Ego) :-  mother(Alter, Ego).
               |  [ext],  mother(A, Ego), para_gen[aux]472(Alter, A).
{"Mo_MoFaBroDa_MoFaFaBroSoDa_MoFaMoSisSoDa_MoMoFaBroDaDa_MoMoMoSisDaDa_MoMoSisDa_MoSis"}
;; 0
%ni:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ni:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 2
%ni:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 3
%ni:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 4
%ni:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 5
%ni:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 6
%ni:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 7
%ni:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).


nisoa(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                  |  [ext],  mother(A, Ego), para_gen[aux]471(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroSoSo_MoFaFaFaBroSoSoSo_MoFaFaMoSisSoSoSo_MoFaMoFaBroDaSoSo_MoFaMoMoSisDaSoSo_MoFaMoSisSoSo_MoMoFaBroDaSo_MoMoFaFaBroSoDaSo_MoMoFaMoSisSoDaSo_MoMoMoFaBroDaDaSo_MoMoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisSo"}
;; 0
%nisoa:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%nisoa:1, para_gen[aux]471:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 3
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), male(Alter).
;; 4
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoMoMoSisDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 5
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoMoFaBroDaDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 6
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), male(Alter).
;; 7
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaMoSisSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 8
%nisoa:1, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaFaBroSoDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 9
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 10
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), male(Alter).
;; 11
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoMoSisDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 12
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoFaBroDaSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 13
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), male(Alter).
;; 14
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaMoSisSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).
;; 15
%nisoa:1, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaFaBroSoSoSo}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(L, I), gender(M, C), gender(M, I), gender(N, B), gender(N, L), child(Alter, L), male(Alter).


om(Alter, Ego) :-  mari(Alter, Ego).
               |  [ext],  child(A, Ego), husband(Alter, A).
               |  [ext],  wife(A, Ego), father(Alter, A).
{"BroWi_DaHu_HuBro_HuSis_SisHu_WiBro_WiFa_WiSis"}
;; 0
%om:0, mari:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%om:0, mari:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%om:0, mari:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%om:0, mari:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 4
%om:0, mari:2, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), spouse(Alter, C).
;; 5
%om:0, mari:2, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), spouse(Alter, C).
;; 6
%om:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
[ext],  child(A, Ego), husband(Alter, A).
;; 7
%om:2%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
[ext],  wife(A, Ego), father(Alter, A).


omaled(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%omaled:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


omaoy(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%omaoy:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


para_gen[aux]471(Alter, Ego) :-  sibling(Alter, Ego).
                             |  [ext],  parents(A, Ego), para_gen[aux]472(B, A), child(Alter, B).
;; 0
%para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 3
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 4
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 5
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 6
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 7
%para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 8
%para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 9
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 10
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 11
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 12
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 13
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 14
%para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).


para_gen[aux]472(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Alter), gender(A, Ego).
                             |   parents(A, Ego), para_gen[aux]472(B, A), child(Alter, B), gender(C, A), gender(C, B), gender(D, Ego), gender(D, Alter).
;; 0
%para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 2
%para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 3
%para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 4
%para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 5
%para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 6
%para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 7
%para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 8
%para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 9
%para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 10
%para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 11
%para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 12
%para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 13
%para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).


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


square[aux]471(Alter, Ego) :-  para_gen[aux]471(Alter, Ego).
                           |   parent(Alter, Ego).
                           |   parent(A, Ego), square[aux]472(Alter, A).
;; 0
%square[aux]471:0, para_gen[aux]471:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 3
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 4
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 5
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 6
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 7
%square[aux]471:0, para_gen[aux]471:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 8
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 9
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 10
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 11
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 12
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G).
;; 13
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 14
%square[aux]471:0, para_gen[aux]471:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(K, H), gender(L, B), gender(L, H), gender(M, A), gender(M, K), child(Alter, K).
;; 15
%square[aux]471:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 16
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 17
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 18
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 19
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 20
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 21
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 22
%square[aux]471:2, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 23
%square[aux]471:2, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, Alter).
;; 24
%square[aux]471:2, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, Alter).
;; 25
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 26
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 27
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 28
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 29
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 30
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 31
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 32
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, Alter).
;; 33
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, Alter).
;; 34
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C).
;; 35
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 36
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 37
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, C), son(C, Alter).
;; 38
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), son(B, C), daughter(C, Alter).
;; 39
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C).
;; 40
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 41
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 42
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, C), son(C, Alter).
;; 43
%square[aux]471:2, square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), son(A, B), daughter(B, C), daughter(C, Alter).
;; 44
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 45
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 46
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 47
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 48
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 49
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 50
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 51
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, Alter).
;; 52
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, Alter).
;; 53
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C).
;; 54
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 55
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 56
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, C), son(C, Alter).
;; 57
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), son(B, C), daughter(C, Alter).
;; 58
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, C), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), gender(F, Alter), gender(F, C).
;; 59
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, C), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 60
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, C), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), gender(I, D), gender(I, G), gender(J, C), gender(J, Alter).
;; 61
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, C), son(C, Alter).
;; 62
%square[aux]471:2, square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), daughter(A, B), daughter(B, C), daughter(C, Alter).


square[aux]472(Alter, Ego) :-  para_gen[aux]472(Alter, Ego).
                           |   children(Ego, Alter).
                           |   children(Ego, A), square[aux]472(Alter, A).
;; 0
%square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 2
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 3
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 4
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 5
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 6
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 7
%square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, Alter).
;; 8
%square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, Alter).
;; 9
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 10
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 11
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 12
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 13
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 14
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 15
%square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 16
%square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, Alter).
;; 17
%square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, Alter).
;; 18
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 19
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 20
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 21
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 22
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 23
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 24
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 25
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), son(B, Alter).
;; 26
%square[aux]472:2, children:0, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), son(A, B), daughter(B, Alter).
;; 27
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 28
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 29
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 30
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 31
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 32
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 33
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 34
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), son(B, Alter).
;; 35
%square[aux]472:2, children:0, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(Ego, A), daughter(A, B), daughter(B, Alter).
;; 36
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 37
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 38
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 39
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 40
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, B), gender(G, E), gender(H, A), gender(H, Alter).
;; 41
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 42
%square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, C), gender(I, F), gender(J, B), gender(J, H), child(Alter, H), gender(K, B), gender(K, H), gender(L, A), gender(L, Alter).
;; 43
%square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, Alter).
;; 44
%square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, Alter).
;; 45
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 46
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 47
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 48
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 49
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 50
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 51
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 52
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), son(B, Alter).
;; 53
%square[aux]472:2, children:1, square[aux]472:2, children:0, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), son(A, B), daughter(B, Alter).
;; 54
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 55
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 56
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 57
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 58
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, C), gender(H, F), gender(I, B), gender(I, Alter).
;; 59
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 60
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, D), gender(J, G), gender(K, C), gender(K, I), child(Alter, I), gender(L, C), gender(L, I), gender(M, B), gender(M, Alter).
;; 61
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), son(B, Alter).
;; 62
%square[aux]472:2, children:1, square[aux]472:2, children:1, square[aux]472:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(Ego, A), daughter(A, B), daughter(B, Alter).
;; 63
%square[aux]472:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 64
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 65
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 66
%square[aux]472:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 67
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, A), gender(F, D), gender(G, Ego), gender(G, Alter).
;; 68
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).
;; 69
%square[aux]472:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(Alter, G), gender(J, A), gender(J, G), gender(K, Ego), gender(K, Alter).


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


waid(Alter, Ego) :-  daughter(Alter, Ego).
                 |  [ext],  para_gen[aux]472(A, Ego), daughter(Alter, A).
{"BroDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaMoSisSoDaDa_FaMoSisSoSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoSisDaDa_MoSisSoDa_SisDa"}
;; 0
%waid:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%waid:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 2
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 3
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 4
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 5
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 6
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 7
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 8
%waid:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(Alter, C).
;; 9
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 10
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 11
%waid:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 12
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, A), gender(G, D), gender(H, Ego), gender(H, F), daughter(Alter, F).
;; 13
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:0, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).
;; 14
%waid:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:1, parents:1, para_gen[aux]472:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, B), gender(H, E), gender(I, A), gender(I, G), child(J, G), gender(K, A), gender(K, G), gender(L, Ego), gender(L, J), daughter(Alter, J).

