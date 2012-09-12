;;  Horn Clause Representation of Coreguaje Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Coreguaje") (author, "Frances Gralow") (date, "1985-01-01") (citation, "Frances Gralow in SOUTH AMERICAN KINSHIP pp. 43-54") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)
(overlaps, (a_cho, (cu_eo, ja_ko, cho_jeo)), (a_chu, (cu_eu, ja_ku, cho_jeu)), (chiio, (najeo)), (chiiu, (najeu)), (cu_eo, (a_cho, ja_ko)), (cu_eu, (a_chu, ja_ku)), (ja_ko, (cu_eo, a_cho)), (ja_ku, (cu_eu, a_chu)), (najeo, (chiio)), (najeu, (chiiu)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

a_cho(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  para_gen[aux]06sr_a(Alter, Ego), female(Alter).
                  |  [ext],  mom_sis[aux]06sr(A, Ego), daughter(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), mother(Alter, B).
                  |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), para_gen[aux]06a(Alter, C), female(Alter).
{"FaBroDa_FaFaBroSoDa_FaFaFaBroSoSoDa_FaFaFaFaBroDa_FaFaFaMoSisDa_FaFaFaSis_FaFaMo_FaFaMoFaBroDa_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisSoSoDa_FaMoFaBroDaSoDa_FaMoFaFaBroDa_FaMoFaMoSisDa_FaMoFaSis_FaMoMo_FaMoMoFaBroDa_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDaSoDa_FaMoSisSoDa_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaFaBroSoDaDa_MoFaFaFaBroDa_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoFaBroDa_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisSoDaDa_MoFaSisDa_MoMoFaBroDaDaDa_MoMoFaFaBroDa_MoMoFaMoSisDa_MoMoFaSis_MoMoMo_MoMoMoFaBroDa_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDaDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%a_cho:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%a_cho:1, para_gen[aux]06sr_a:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), female(Alter).
;; 2
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 3
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 4
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 5
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 6
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 7
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 8
%a_cho:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 9
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 10
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 11
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 12
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 13
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 14
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 15
%a_cho:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 16
%a_cho:2, mom_sis[aux]06sr:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), daughter(Alter, D).
;; 17
%a_cho:2, mom_sis[aux]06sr:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), elder(D, A), daughter(Alter, E).
;; 18
%a_cho:2, mom_sis[aux]06sr:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), elder(D, A), daughter(Alter, F).
;; 19
%a_cho:2, mom_sis[aux]06sr:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), daughter(Alter, E).
;; 20
%a_cho:2, mom_sis[aux]06sr:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), daughter(Alter, F).
;; 21
%a_cho:3, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
[ext],  mother(A, Ego), mother(B, A), mother(Alter, B).
;; 22
%a_cho:3, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
[ext],  mother(A, Ego), father(B, A), mother(Alter, B).
;; 23
%a_cho:3, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
[ext],  father(A, Ego), mother(B, A), mother(Alter, B).
;; 24
%a_cho:3, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
[ext],  father(A, Ego), father(B, A), mother(Alter, B).
;; 25
%a_cho:4, parents:0, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 26
%a_cho:4, parents:0, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 27
%a_cho:4, parents:0, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 28
%a_cho:4, parents:0, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 29
%a_cho:4, parents:0, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 30
%a_cho:4, parents:0, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 31
%a_cho:4, parents:0, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%a_cho:4, parents:0, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 33
%a_cho:4, parents:0, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 34
%a_cho:4, parents:0, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 35
%a_cho:4, parents:0, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 36
%a_cho:4, parents:0, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 37
%a_cho:4, parents:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 38
%a_cho:4, parents:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 39
%a_cho:4, parents:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 40
%a_cho:4, parents:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 41
%a_cho:4, parents:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 42
%a_cho:4, parents:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 43
%a_cho:4, parents:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 44
%a_cho:4, parents:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 45
%a_cho:4, parents:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 46
%a_cho:4, parents:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 47
%a_cho:4, parents:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).
;; 48
%a_cho:4, parents:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), female(Alter).


a_chu(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego), male(Alter).
                  |  [ext],  para_gen[aux]06sr_a(Alter, Ego), male(Alter).
                  |  [ext],  mom_sis[aux]06sr(A, Ego), son(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), father(Alter, B).
                  |  [ext],  parents(A, Ego), parents(B, A), parents(C, B), para_gen[aux]06a(Alter, C), male(Alter).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaFa_FaFaFaBro_FaFaFaBroSoSoSo_FaFaFaFaBroSo_FaFaFaMoSisSo_FaFaMoBro_FaFaMoFaBroSo_FaFaMoMoSisSo_FaFaMoSisSoSoSo_FaMoFa_FaMoFaBro_FaMoFaBroDaSoSo_FaMoFaFaBroSo_FaMoFaMoSisSo_FaMoMoBro_FaMoMoFaBroSo_FaMoMoMoSisSo_FaMoMoSisDaSoSo_FaMoSisSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaSo_MoFaFa_MoFaFaBro_MoFaFaBroSoDaSo_MoFaFaFaBroSo_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoFaBroSo_MoFaMoMoSisSo_MoFaMoSisSoDaSo_MoFaSisSo_MoMoFa_MoMoFaBro_MoMoFaBroDaDaSo_MoMoFaFaBroSo_MoMoFaMoSisSo_MoMoMoBro_MoMoMoFaBroSo_MoMoMoMoSisSo_MoMoMoSisDaDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%a_chu:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), male(Alter).
;; 1
%a_chu:1, para_gen[aux]06sr_a:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), male(Alter).
;; 2
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 3
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 4
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 5
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 6
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 7
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 8
%a_chu:1, para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 9
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 10
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 11
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 12
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 13
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 14
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 15
%a_chu:1, para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 16
%a_chu:2, mom_sis[aux]06sr:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), elder(D, A), son(Alter, D).
;; 17
%a_chu:2, mom_sis[aux]06sr:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), elder(D, A), son(Alter, E).
;; 18
%a_chu:2, mom_sis[aux]06sr:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), elder(D, A), son(Alter, F).
;; 19
%a_chu:2, mom_sis[aux]06sr:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), elder(E, B), son(Alter, E).
;; 20
%a_chu:2, mom_sis[aux]06sr:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), elder(F, C), son(Alter, F).
;; 21
%a_chu:3, parents:0, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
[ext],  mother(A, Ego), mother(B, A), father(Alter, B).
;; 22
%a_chu:3, parents:0, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
[ext],  mother(A, Ego), father(B, A), father(Alter, B).
;; 23
%a_chu:3, parents:1, parents:0%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
[ext],  father(A, Ego), mother(B, A), father(Alter, B).
;; 24
%a_chu:3, parents:1, parents:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
[ext],  father(A, Ego), father(B, A), father(Alter, B).
;; 25
%a_chu:4, parents:0, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 26
%a_chu:4, parents:0, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 27
%a_chu:4, parents:0, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 28
%a_chu:4, parents:0, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 29
%a_chu:4, parents:0, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 30
%a_chu:4, parents:0, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 31
%a_chu:4, parents:0, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%a_chu:4, parents:0, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 33
%a_chu:4, parents:0, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 34
%a_chu:4, parents:0, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 35
%a_chu:4, parents:0, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 36
%a_chu:4, parents:0, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 37
%a_chu:4, parents:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 38
%a_chu:4, parents:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 39
%a_chu:4, parents:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 40
%a_chu:4, parents:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 41
%a_chu:4, parents:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 42
%a_chu:4, parents:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 43
%a_chu:4, parents:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 44
%a_chu:4, parents:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 45
%a_chu:4, parents:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 46
%a_chu:4, parents:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%a_chu:4, parents:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).
;; 48
%a_chu:4, parents:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(Alter, G), male(Alter).


brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).
;; 0
%brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).


cha_cha(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                    |  [ext],  mother(A, Ego), para_gen[aux]06a(Alter, A), male(Alter).
                    |  [ext],  mom_bro[aux]06(Alter, Ego).
{"MoBro_MoBroSo_MoBroSoSo_MoFaBroSo_MoFaFaBroSoSo_MoFaFaFaBroSoSoSo_MoFaFaMoSisSoSoSo_MoFaMoFaBroDaSoSo_MoFaMoMoSisDaSoSo_MoFaMoSisSoSo_MoMoBroDaSo_MoMoBroSoDaSo_MoMoFaBroDaSo_MoMoFaFaBroSoDaSo_MoMoFaFaSisSo_MoMoFaMoSisSoDaSo_MoMoFaSisSo_MoMoMoFaBroDaDaSo_MoMoMoMoSisDaDaSo_MoMoMoSisDaSo_MoMoSisSo"}
;; 0
%cha_cha:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%cha_cha:1, para_gen[aux]06a:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 3
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 4
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 5
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 6
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 7
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 8
%cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 9
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 10
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 11
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoMoSisDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 12
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaMoFaBroDaSoSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 13
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 14
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaMoSisSoSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 15
%cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoFaFaFaBroSoSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 16
%cha_cha:2, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 17
%cha_cha:2, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 18
%cha_cha:2, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 19
%cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 20
%cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 21
%cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 22
%cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 23
%cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


chiio(Alter, Ego) :-  male(Ego), ja_ku(Ego, Alter), female(Alter).
                  |   female(Ego), ja_ko(Ego, Alter), female(Alter).
{"BroDa_BroDaDa_BroSoDaDa_Da_FaBroDaDa_FaBroSoDa_FaFaBroSoDaDa_FaFaBroSoSoDa_FaFaSisDa_FaMoFaFaSisSoDaDa_FaMoFaSisSoDaDa_FaMoSisSoDaDa_FaMoSisSoSoDa_FaSisDa_MoBroDaDaDa_MoBroDaSoDa_MoFaBroDaDaDa_MoFaBroDaSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaSisDaDa_MoFaSisSoDa_MoMoFaFaSisDaDaDa_MoMoFaSisDaDaDa_MoMoSisDaDaDa_MoMoSisDaSoDa_MoSisDaDa_MoSisSoDa_SisDa"}
;; 0
%chiio:0, ja_ku:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 male(Ego), father(Ego, Alter), female(Alter).
;; 1
%chiio:0, ja_ku:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Ego), gender(D, A), female(Alter).
;; 2
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), female(Alter).
;; 3
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 4
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 5
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), female(Alter).
;; 6
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 7
%chiio:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 8
%chiio:0, ja_ku:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), female(Alter).
;; 9
%chiio:0, ja_ku:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Ego, F), female(Alter).
;; 10
%chiio:0, ja_ku:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Ego, G), female(Alter).
;; 11
%chiio:0, ja_ku:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), female(Alter).
;; 12
%chiio:1, ja_ko:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 female(Ego), mother(Ego, Alter), female(Alter).
;; 13
%chiio:1, ja_ko:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Ego), gender(D, A), female(Alter).
;; 14
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), female(Alter).
;; 15
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 16
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 17
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), female(Alter).
;; 18
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 19
%chiio:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), female(Alter).
;; 20
%chiio:1, ja_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), female(Alter).
;; 21
%chiio:1, ja_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Ego, D), female(Alter).
;; 22
%chiio:1, ja_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Ego, E), female(Alter).
;; 23
%chiio:1, ja_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 24
%chiio:1, ja_ko:2, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 25
%chiio:1, ja_ko:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Ego, E), female(Alter).
;; 26
%chiio:1, ja_ko:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Ego, F), female(Alter).
;; 27
%chiio:1, ja_ko:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Ego, G), female(Alter).
;; 28
%chiio:1, ja_ko:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F), female(Alter).
;; 29
%chiio:1, ja_ko:4, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Ego, G), female(Alter).
;; 30
%chiio:1, ja_ko:4, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Ego, H), female(Alter).
;; 31
%chiio:1, ja_ko:4, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaFaSisDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Ego, I), female(Alter).
;; 32
%chiio:1, ja_ko:5, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Ego, G), female(Alter).
;; 33
%chiio:1, ja_ko:5, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Ego, H), female(Alter).
;; 34
%chiio:1, ja_ko:5, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaFaSisSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Ego, I), female(Alter).


chiiu(Alter, Ego) :-  male(Ego), ja_ku(Ego, Alter), male(Alter).
                  |   female(Ego), ja_ko(Ego, Alter), male(Alter).
{"BroDaSo_BroSo_BroSoDaSo_FaBroDaSo_FaBroSoSo_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaSisSo_FaMoFaFaSisSoDaSo_FaMoFaSisSoDaSo_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisSo_MoBroDaDaSo_MoBroDaSoSo_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaSisDaSo_MoFaSisSoSo_MoMoFaFaSisDaDaSo_MoMoFaSisDaDaSo_MoMoSisDaDaSo_MoMoSisDaSoSo_MoSisDaSo_MoSisSoSo_SisSo_So"}
;; 0
%chiiu:0, ja_ku:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 male(Ego), father(Ego, Alter), male(Alter).
;; 1
%chiiu:0, ja_ku:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Ego), gender(D, A), male(Alter).
;; 2
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), male(Alter).
;; 3
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 4
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 5
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), male(Alter).
;; 6
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 7
%chiiu:0, ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 8
%chiiu:0, ja_ku:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), male(Alter).
;; 9
%chiiu:0, ja_ku:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Ego, F), male(Alter).
;; 10
%chiiu:0, ja_ku:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Ego, G), male(Alter).
;; 11
%chiiu:0, ja_ku:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), male(Alter).
;; 12
%chiiu:1, ja_ko:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 female(Ego), mother(Ego, Alter), male(Alter).
;; 13
%chiiu:1, ja_ko:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), gender(D, Ego), gender(D, A), male(Alter).
;; 14
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), male(Alter).
;; 15
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 16
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 17
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), gender(G, Ego), gender(G, A), male(Alter).
;; 18
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 19
%chiiu:1, ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), gender(J, Ego), gender(J, A), male(Alter).
;; 20
%chiiu:1, ja_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), male(Alter).
;; 21
%chiiu:1, ja_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Ego, D), male(Alter).
;; 22
%chiiu:1, ja_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Ego, E), male(Alter).
;; 23
%chiiu:1, ja_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 24
%chiiu:1, ja_ko:2, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 25
%chiiu:1, ja_ko:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Ego, E), male(Alter).
;; 26
%chiiu:1, ja_ko:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Ego, F), male(Alter).
;; 27
%chiiu:1, ja_ko:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Ego, G), male(Alter).
;; 28
%chiiu:1, ja_ko:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F), male(Alter).
;; 29
%chiiu:1, ja_ko:4, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Ego, G), male(Alter).
;; 30
%chiiu:1, ja_ko:4, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Ego, H), male(Alter).
;; 31
%chiiu:1, ja_ko:4, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {MoMoFaFaSisDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), daughter(I, H), daughter(Ego, I), male(Alter).
;; 32
%chiiu:1, ja_ko:5, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Ego, G), male(Alter).
;; 33
%chiiu:1, ja_ko:5, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Ego, H), male(Alter).
;; 34
%chiiu:1, ja_ko:5, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(I, H), daughter(Ego, I), male(Alter).


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


cho_jeo(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego), female(Alter).
                    |  [ext],  para_gen[aux]06jr_a(Alter, Ego), female(Alter).
                    |  [ext],  mom_sis[aux]06jr(A, Ego), daughter(Alter, A).
                    |  [ext],  children(A, Ego), children(B, A), daughter(Alter, B).
                    |  [ext],  para_gen[aux]06b(A, Ego), children(B, A), children(C, B), daughter(Alter, C).
{"BroDaDaDa_BroDaSoDa_BroSoDaDa_BroSoSoDa_DaDaDa_DaSoDa_FaBroDa_FaBroDaDaDaDa_FaBroDaDaSoDa_FaBroDaSoDaDa_FaBroDaSoSoDa_FaBroSoDaDaDa_FaBroSoDaSoDa_FaBroSoSoDaDa_FaBroSoSoSoDa_FaFaBroSoDa_FaFaBroSoDaDaDaDa_FaFaBroSoDaDaSoDa_FaFaBroSoDaSoDaDa_FaFaBroSoDaSoSoDa_FaFaBroSoSoDaDaDa_FaFaBroSoSoDaSoDa_FaFaBroSoSoSoDaDa_FaFaBroSoSoSoSoDa_FaFaFaBroSoSoDa_FaFaMoSisSoSoDa_FaMoFaBroDaSoDa_FaMoMoSisDaSoDa_FaMoSisSoDa_FaMoSisSoDaDaDaDa_FaMoSisSoDaDaSoDa_FaMoSisSoDaSoDaDa_FaMoSisSoDaSoSoDa_FaMoSisSoSoDaDaDa_FaMoSisSoSoDaSoDa_FaMoSisSoSoSoDaDa_FaMoSisSoSoSoSoDa_MoBroDaDa_MoBroSoDaDa_MoFaBroDaDa_MoFaBroDaDaDaDaDa_MoFaBroDaDaDaSoDa_MoFaBroDaDaSoDaDa_MoFaBroDaDaSoSoDa_MoFaBroDaSoDaDaDa_MoFaBroDaSoDaSoDa_MoFaBroDaSoSoDaDa_MoFaBroDaSoSoSoDa_MoFaFaBroSoDaDa_MoFaFaSisDa_MoFaMoSisSoDaDa_MoFaSisDa_MoMoFaBroDaDaDa_MoMoMoSisDaDaDa_MoMoSisDaDa_MoMoSisDaDaDaDaDa_MoMoSisDaDaDaSoDa_MoMoSisDaDaSoDaDa_MoMoSisDaDaSoSoDa_MoMoSisDaSoDaDaDa_MoMoSisDaSoDaSoDa_MoMoSisDaSoSoDaDa_MoMoSisDaSoSoSoDa_MoSisDa_MoSisDaDaDaDa_MoSisDaDaSoDa_MoSisDaSoDaDa_MoSisDaSoSoDa_MoSisSoDaDaDa_MoSisSoDaSoDa_MoSisSoSoDaDa_MoSisSoSoSoDa_Sis_SisDaDaDa_SisDaSoDa_SisSoDaDa_SisSoSoDa_SoDaDa_SoSoDa"}
;; 0
%cho_jeo:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), female(Alter).
;; 1
%cho_jeo:1, para_gen[aux]06jr_a:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), female(Alter).
;; 2
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 3
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 4
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 5
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 6
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 7
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 8
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 9
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), female(Alter).
;; 10
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 11
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 12
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 13
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), female(Alter).
;; 14
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 15
%cho_jeo:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), female(Alter).
;; 16
%cho_jeo:2, mom_sis[aux]06jr:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), daughter(Alter, D).
;; 17
%cho_jeo:2, mom_sis[aux]06jr:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), younger(D, A), daughter(Alter, E).
;; 18
%cho_jeo:2, mom_sis[aux]06jr:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), younger(D, A), daughter(Alter, F).
;; 19
%cho_jeo:2, mom_sis[aux]06jr:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), daughter(Alter, E).
;; 20
%cho_jeo:2, mom_sis[aux]06jr:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), younger(F, C), daughter(Alter, F).
;; 21
%cho_jeo:3, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
[ext],  son(A, Ego), son(B, A), daughter(Alter, B).
;; 22
%cho_jeo:3, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
[ext],  son(A, Ego), daughter(B, A), daughter(Alter, B).
;; 23
%cho_jeo:3, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
[ext],  daughter(A, Ego), son(B, A), daughter(Alter, B).
;; 24
%cho_jeo:3, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
[ext],  daughter(A, Ego), daughter(B, A), daughter(Alter, B).
;; 25
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(F, E), daughter(Alter, F).
;; 26
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(F, E), daughter(Alter, F).
;; 27
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(F, E), daughter(Alter, F).
;; 28
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(F, E), daughter(Alter, F).
;; 29
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), daughter(Alter, I).
;; 30
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), daughter(Alter, I).
;; 31
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), daughter(Alter, I).
;; 32
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), daughter(Alter, I).
;; 33
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 34
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 35
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 36
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 37
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 38
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 39
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoDaSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 40
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 41
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), daughter(Alter, I).
;; 42
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), daughter(Alter, I).
;; 43
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), daughter(Alter, I).
;; 44
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), daughter(Alter, I).
;; 45
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoSoSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 46
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 47
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 48
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 49
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoSoSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 50
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 51
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 52
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 53
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(F, E), daughter(Alter, F).
;; 54
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(F, E), daughter(Alter, F).
;; 55
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(F, E), daughter(Alter, F).
;; 56
%cho_jeo:4, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(F, E), daughter(Alter, F).
;; 57
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), daughter(Alter, I).
;; 58
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), daughter(Alter, I).
;; 59
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), daughter(Alter, I).
;; 60
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), daughter(Alter, I).
;; 61
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 62
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 63
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 64
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 65
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 66
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 67
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 68
%cho_jeo:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 69
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), daughter(Alter, I).
;; 70
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), daughter(Alter, I).
;; 71
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), daughter(Alter, I).
;; 72
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), daughter(Alter, I).
;; 73
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 74
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 75
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 76
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).
;; 77
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), daughter(Alter, L).
;; 78
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), daughter(Alter, L).
;; 79
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), daughter(Alter, L).
;; 80
%cho_jeo:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), daughter(Alter, L).


cho_jeu(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego), male(Alter).
                    |  [ext],  para_gen[aux]06jr_a(Alter, Ego), male(Alter).
                    |  [ext],  mom_sis[aux]06jr(A, Ego), son(Alter, A).
                    |  [ext],  children(A, Ego), children(B, A), son(Alter, B).
                    |  [ext],  para_gen[aux]06b(A, Ego), children(B, A), children(C, B), son(Alter, C).
{"Bro_BroDaDaSo_BroDaSoSo_BroSoDaSo_BroSoSoSo_DaDaSo_DaSoSo_FaBroDaDaDaSo_FaBroDaDaSoSo_FaBroDaSoDaSo_FaBroDaSoSoSo_FaBroSo_FaBroSoDaDaSo_FaBroSoDaSoSo_FaBroSoSoDaSo_FaBroSoSoSoSo_FaFaBroSoDaDaDaSo_FaFaBroSoDaDaSoSo_FaFaBroSoDaSoDaSo_FaFaBroSoDaSoSoSo_FaFaBroSoSo_FaFaBroSoSoDaDaSo_FaFaBroSoSoDaSoSo_FaFaBroSoSoSoDaSo_FaFaBroSoSoSoSoSo_FaFaFaBroSoSoSo_FaFaMoSisSoSoSo_FaMoFaBroDaSoSo_FaMoMoSisDaSoSo_FaMoSisSoDaDaDaSo_FaMoSisSoDaDaSoSo_FaMoSisSoDaSoDaSo_FaMoSisSoDaSoSoSo_FaMoSisSoSo_FaMoSisSoSoDaDaSo_FaMoSisSoSoDaSoSo_FaMoSisSoSoSoDaSo_FaMoSisSoSoSoSoSo_MoBroDaSo_MoBroSoDaSo_MoFaBroDaDaDaDaSo_MoFaBroDaDaDaSoSo_MoFaBroDaDaSoDaSo_MoFaBroDaDaSoSoSo_MoFaBroDaSo_MoFaBroDaSoDaDaSo_MoFaBroDaSoDaSoSo_MoFaBroDaSoSoDaSo_MoFaBroDaSoSoSoSo_MoFaFaBroSoDaSo_MoFaFaSisSo_MoFaMoSisSoDaSo_MoFaSisSo_MoMoFaBroDaDaSo_MoMoMoSisDaDaSo_MoMoSisDaDaDaDaSo_MoMoSisDaDaDaSoSo_MoMoSisDaDaSoDaSo_MoMoSisDaDaSoSoSo_MoMoSisDaSo_MoMoSisDaSoDaDaSo_MoMoSisDaSoDaSoSo_MoMoSisDaSoSoDaSo_MoMoSisDaSoSoSoSo_MoSisDaDaDaSo_MoSisDaDaSoSo_MoSisDaSoDaSo_MoSisDaSoSoSo_MoSisSo_MoSisSoDaDaSo_MoSisSoDaSoSo_MoSisSoSoDaSo_MoSisSoSoSoSo_SisDaDaSo_SisDaSoSo_SisSoDaSo_SisSoSoSo_SoDaSo_SoSoSo"}
;; 0
%cho_jeu:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), male(Alter).
;; 1
%cho_jeu:1, para_gen[aux]06jr_a:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
[ext],  mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), male(Alter).
;; 2
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 3
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 4
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 5
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 6
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 7
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 8
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 9
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), male(Alter).
;; 10
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 11
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 12
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 13
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), male(Alter).
;; 14
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 15
%cho_jeu:1, para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J), male(Alter).
;; 16
%cho_jeu:2, mom_sis[aux]06jr:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), younger(D, A), son(Alter, D).
;; 17
%cho_jeu:2, mom_sis[aux]06jr:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), younger(D, A), son(Alter, E).
;; 18
%cho_jeu:2, mom_sis[aux]06jr:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), younger(D, A), son(Alter, F).
;; 19
%cho_jeu:2, mom_sis[aux]06jr:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), younger(E, B), son(Alter, E).
;; 20
%cho_jeu:2, mom_sis[aux]06jr:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), younger(F, C), son(Alter, F).
;; 21
%cho_jeu:3, children:0, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
[ext],  son(A, Ego), son(B, A), son(Alter, B).
;; 22
%cho_jeu:3, children:0, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
[ext],  son(A, Ego), daughter(B, A), son(Alter, B).
;; 23
%cho_jeu:3, children:1, children:0%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
[ext],  daughter(A, Ego), son(B, A), son(Alter, B).
;; 24
%cho_jeu:3, children:1, children:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
[ext],  daughter(A, Ego), daughter(B, A), son(Alter, B).
;; 25
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(F, E), son(Alter, F).
;; 26
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(F, E), son(Alter, F).
;; 27
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(F, E), son(Alter, F).
;; 28
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(F, E), son(Alter, F).
;; 29
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), son(Alter, I).
;; 30
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), son(Alter, I).
;; 31
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), son(Alter, I).
;; 32
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), son(Alter, I).
;; 33
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 34
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 35
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 36
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 37
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 38
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 39
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoDaSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 40
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaSoDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 41
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), son(Alter, I).
;; 42
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), son(Alter, I).
;; 43
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), son(Alter, I).
;; 44
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), son(Alter, I).
;; 45
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoSoSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 46
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 47
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoDaSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 48
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 49
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoSoSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 50
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 51
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 52
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoSoDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 53
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), son(F, E), son(Alter, F).
;; 54
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), son(E, C), daughter(F, E), son(Alter, F).
;; 55
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), son(F, E), son(Alter, F).
;; 56
%cho_jeu:4, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, C), gender(D, Ego), daughter(E, C), daughter(F, E), son(Alter, F).
;; 57
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), son(Alter, I).
;; 58
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), son(Alter, I).
;; 59
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), son(Alter, I).
;; 60
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), son(Alter, I).
;; 61
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 62
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 63
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 64
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoMoSisDaDaDaDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 65
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 66
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 67
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 68
%cho_jeu:4, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {MoFaBroDaDaDaDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 69
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), son(I, H), son(Alter, I).
;; 70
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), son(H, F), daughter(I, H), son(Alter, I).
;; 71
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), son(I, H), son(Alter, I).
;; 72
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), gender(G, F), gender(G, Ego), daughter(H, F), daughter(I, H), son(Alter, I).
;; 73
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 74
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaSoDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 75
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 76
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaMoSisSoDaDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).
;; 77
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), son(L, K), son(Alter, L).
;; 78
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:0, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaSoDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), son(K, I), daughter(L, K), son(Alter, L).
;; 79
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:0%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), son(L, K), son(Alter, L).
;; 80
%cho_jeu:4, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0, children:1, children:1%
 Lvl=-3,  PC=11, S=0, Star=0,  {FaFaBroSoDaDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), gender(J, I), gender(J, Ego), daughter(K, I), daughter(L, K), son(Alter, L).


cu_eo(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), para_gen[aux]06a(Alter, B), female(Alter).
                  |  [ext],  parents(A, Ego), mom_sis[aux]06(Alter, A).
{"FaFaFaBroDa_FaFaFaFaBroSoDa_FaFaFaMoSisSoDa_FaFaMoFaBroDaDa_FaFaMoMoSisDaDa_FaFaMoSisDa_FaFaSis_FaMo_FaMoBroDa_FaMoBroSoDa_FaMoFaBroDa_FaMoFaFaBroSoDa_FaMoFaFaSis_FaMoFaMoSisSoDa_FaMoFaSis_FaMoMoFaBroDaDa_FaMoMoMoSisDaDa_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaFaBroSoDa_MoFaFaMoSisSoDa_MoFaMoFaBroDaDa_MoFaMoMoSisDaDa_MoFaMoSisDa_MoFaSis_MoMo_MoMoBroDa_MoMoBroSoDa_MoMoFaBroDa_MoMoFaFaBroSoDa_MoMoFaFaSis_MoMoFaMoSisSoDa_MoMoFaSis_MoMoMoFaBroDaDa_MoMoMoMoSisDaDa_MoMoMoSisDa_MoMoSis"}
;; 0
%cu_eo:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%cu_eo:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 4
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 5
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 6
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 7
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 8
%cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 9
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 10
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 11
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 12
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 13
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 14
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 15
%cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 16
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 18
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 19
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 20
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 21
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 22
%cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 23
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 24
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 25
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 26
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 27
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), female(Alter).
;; 28
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 29
%cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), female(Alter).
;; 30
%cu_eo:2, parents:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 31
%cu_eo:2, parents:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 32
%cu_eo:2, parents:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 33
%cu_eo:2, parents:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 34
%cu_eo:2, parents:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 35
%cu_eo:2, parents:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 36
%cu_eo:2, parents:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 37
%cu_eo:2, parents:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 38
%cu_eo:2, parents:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 39
%cu_eo:2, parents:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).


cu_eu(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), para_gen[aux]06a(Alter, B), male(Alter).
                  |  [ext],  parents(A, Ego), mom_bro[aux]06(Alter, A).
{"FaFa_FaFaBro_FaFaFaBroSo_FaFaFaFaBroSoSo_FaFaFaMoSisSoSo_FaFaMoFaBroDaSo_FaFaMoMoSisDaSo_FaFaMoSisSo_FaMoBro_FaMoBroSo_FaMoBroSoSo_FaMoFaBroSo_FaMoFaFaBroSoSo_FaMoFaMoSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoDaSo_FaMoMoFaBroDaSo_FaMoMoFaSisSo_FaMoMoMoSisDaSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFaBroSo_MoFaFaFaBroSoSo_MoFaFaMoSisSoSo_MoFaMoFaBroDaSo_MoFaMoMoSisDaSo_MoFaMoSisSo_MoMoBro_MoMoBroSo_MoMoBroSoSo_MoMoFaBroSo_MoMoFaFaBroSoSo_MoMoFaMoSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoDaSo_MoMoMoFaBroDaSo_MoMoMoFaSisSo_MoMoMoMoSisDaSo_MoMoMoSisSo"}
;; 0
%cu_eu:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%cu_eu:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 4
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoMoSisDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 5
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 6
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 7
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaMoSisSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 8
%cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoFaFaBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 9
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 10
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 11
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoMoSisDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 12
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaBroDaSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 13
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 14
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaMoSisSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 15
%cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaFaFaBroSoSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 16
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 18
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 19
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 20
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 21
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaMoSisSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 22
%cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaMoFaFaBroSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 23
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 24
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 25
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoMoSisDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 26
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaMoFaBroDaSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 27
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), male(Alter).
;; 28
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 29
%cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {FaFaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), male(Alter).
;; 30
%cu_eu:2, parents:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 31
%cu_eu:2, parents:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 32
%cu_eu:2, parents:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 33
%cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 34
%cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 35
%cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 36
%cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 37
%cu_eu:2, parents:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 38
%cu_eu:2, parents:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 39
%cu_eu:2, parents:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 40
%cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 41
%cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 42
%cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 43
%cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


dad_in_law[aux]06(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
                              |  [ext],  spice(A, Ego), father(B, A), para_gen[aux]06b(Alter, B).
                              |  [ext],  spice(A, Ego), mom_bro[aux]06(Alter, A).
;; 0
%dad_in_law[aux]06:0, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(Alter, A).
;; 1
%dad_in_law[aux]06:0, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(Alter, A).
;; 2
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 3
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 4
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 5
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 6
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 7
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 8
%dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 9
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 10
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 11
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 12
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 13
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 14
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 15
%dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 16
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 18
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 19
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 20
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 21
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 22
%dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 23
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 24
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 25
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 26
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 27
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 28
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 29
%dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


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


ja_ko(Alter, Ego) :-  mother(Alter, Ego).
                  |  [ext],  mother(A, Ego), para_gen[aux]06b(Alter, A).
                  |  [ext],  mom_sis[aux]06(Alter, Ego).
                  |  [ext],  mother(A, Ego), mom_sis[aux]06(B, A), daughter(Alter, B).
                  |  [ext],  mother(A, Ego), mother(B, A), mom_sis[aux]06(C, B), daughter(D, C), daughter(Alter, D).
                  |  [ext],  mother(A, Ego), father(B, A), mom_sis[aux]06(C, B), son(D, C), daughter(Alter, D).
{"Mo_MoBroDa_MoBroSoDa_MoFaBroDa_MoFaFaBroSoDa_MoFaFaSis_MoFaMoBroDaSoDa_MoFaMoFaSisSoDa_MoFaMoSisSoDa_MoFaSis_MoMoBroDaDa_MoMoBroSoDaDa_MoMoFaBroDaDa_MoMoFaFaSisDa_MoMoFaSisDa_MoMoMoBroDaDaDa_MoMoMoFaSisDaDa_MoMoMoSisDaDa_MoMoSisDa_MoSis"}
;; 0
%ja_ko:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).
;; 1
%ja_ko:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 2
%ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, Alter), gender(G, A).
;; 3
%ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 4
%ja_ko:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 5
%ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, Alter), gender(G, A).
;; 6
%ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 7
%ja_ko:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 8
%ja_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 9
%ja_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 10
%ja_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 11
%ja_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%ja_ko:2, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 13
%ja_ko:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 14
%ja_ko:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 15
%ja_ko:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 16
%ja_ko:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 17
%ja_ko:3, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 18
%ja_ko:4, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(Alter, G).
;; 19
%ja_ko:4, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), daughter(Alter, H).
;; 20
%ja_ko:4, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoMoMoFaSisDaDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(Alter, H).
;; 21
%ja_ko:5, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(Alter, G).
;; 22
%ja_ko:5, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), daughter(Alter, H).
;; 23
%ja_ko:5, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=10, S=0, Star=0,  {MoFaMoFaSisSoDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(Alter, H).


ja_ku(Alter, Ego) :-  father(Alter, Ego).
                  |  [ext],  father(A, Ego), para_gen[aux]06b(Alter, A).
                  |  [ext],  father(A, Ego), mom_sis[aux]06(B, A), son(Alter, B).
{"Fa_FaBro_FaFaBroSo_FaFaFaBroSoSo_FaFaMoSisSoSo_FaMoBroDaSo_FaMoBroSoDaSo_FaMoFaBroDaSo_FaMoFaFaSisSo_FaMoFaSisSo_FaMoMoSisDaSo_FaMoSisSo"}
;; 0
%ja_ku:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).
;; 1
%ja_ku:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, Alter), gender(D, A).
;; 2
%ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, Alter), gender(G, A).
;; 3
%ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 4
%ja_ku:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 5
%ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), gender(G, Alter), gender(G, A).
;; 6
%ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 7
%ja_ku:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), gender(J, Alter), gender(J, A).
;; 8
%ja_ku:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 9
%ja_ku:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 10
%ja_ku:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 11
%ja_ku:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 12
%ja_ku:2, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


je_oo(Alter, Ego) :-  spice(A, Ego), sister(Alter, A).
                  |   sibling(A, Ego), wife(Alter, A).
                  |  [ext],  spice(A, Ego), para_gen[aux]06a(Alter, A), female(Alter).
                  |  [ext],  para_gen[aux]06a(A, Ego), wife(Alter, A).
                  |  [ext],  spice(A, Ego), mom_sis[aux]06(B, A), daughter(Alter, B).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_FaFaFaBroSoSoSoWi_FaFaMoSisSoSoSoWi_FaMoFaBroDaSoSoWi_FaMoMoSisDaSoSoWi_FaMoSisSoSoWi_HuFaBroDa_HuFaFaBroSoDa_HuFaFaFaBroSoSoDa_HuFaFaMoSisSoSoDa_HuFaMoFaBroDaSoDa_HuFaMoMoSisDaSoDa_HuFaMoSisSoDa_HuMoBroDaDa_HuMoBroSoDaDa_HuMoFaBroDaDa_HuMoFaFaBroSoDaDa_HuMoFaFaSisDa_HuMoFaMoSisSoDaDa_HuMoFaSisDa_HuMoMoFaBroDaDaDa_HuMoMoMoSisDaDaDa_HuMoMoSisDaDa_HuMoSisDa_HuSis_MoFaBroDaSoWi_MoFaFaBroSoDaSoWi_MoFaMoSisSoDaSoWi_MoMoFaBroDaDaSoWi_MoMoMoSisDaDaSoWi_MoMoSisDaSoWi_MoSisSoWi_WiFaBroDa_WiFaFaBroSoDa_WiFaFaFaBroSoSoDa_WiFaFaMoSisSoSoDa_WiFaMoFaBroDaSoDa_WiFaMoMoSisDaSoDa_WiFaMoSisSoDa_WiMoBroDaDa_WiMoBroSoDaDa_WiMoFaBroDaDa_WiMoFaFaBroSoDaDa_WiMoFaFaSisDa_WiMoFaMoSisSoDaDa_WiMoFaSisDa_WiMoMoFaBroDaDaDa_WiMoMoMoSisDaDaDa_WiMoMoSisDaDa_WiMoSisDa_WiSis"}
;; 0
%je_oo:0, spice:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%je_oo:0, spice:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%je_oo:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C).
;; 3
%je_oo:2, spice:0, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 4
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 5
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 6
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoMoMoSisDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 7
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoMoFaBroDaDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 8
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 9
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaMoSisSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 10
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaFaBroSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 11
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 12
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 13
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoMoSisDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 14
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoFaBroDaSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 15
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 16
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaFaMoSisSoSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 17
%je_oo:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaFaFaBroSoSoDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 18
%je_oo:2, spice:1, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 19
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 20
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 21
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoMoMoSisDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 22
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoMoFaBroDaDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 23
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 24
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoFaMoSisSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 25
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoFaFaBroSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 26
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 27
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 28
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoMoSisDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 29
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoFaBroDaSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 30
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 31
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaFaMoSisSoSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 32
%je_oo:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaFaFaBroSoSoDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 33
%je_oo:3, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), wife(Alter, C).
;; 34
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), wife(Alter, F).
;; 35
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), wife(Alter, I).
;; 36
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 37
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 38
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), wife(Alter, I).
;; 39
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 40
%je_oo:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaSoWi}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 41
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), wife(Alter, F).
;; 42
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), wife(Alter, I).
;; 43
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 44
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 45
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), wife(Alter, I).
;; 46
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 47
%je_oo:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoSoSoWi}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), wife(Alter, L).
;; 48
%je_oo:4, spice:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 49
%je_oo:4, spice:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 50
%je_oo:4, spice:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 51
%je_oo:4, spice:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 52
%je_oo:4, spice:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).
;; 53
%je_oo:4, spice:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 54
%je_oo:4, spice:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 55
%je_oo:4, spice:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 56
%je_oo:4, spice:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 57
%je_oo:4, spice:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).


je_ou(Alter, Ego) :-  spice(A, Ego), brother(Alter, A).
                  |   sibling(A, Ego), husband(Alter, A).
                  |  [ext],  spice(A, Ego), para_gen[aux]06a(Alter, A), male(Alter).
                  |  [ext],  para_gen[aux]06a(A, Ego), husband(Alter, A).
                  |  [ext],  spice(A, Ego), mom_sis[aux]06(B, A), son(Alter, B).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaFaBroSoSoDaHu_FaFaMoSisSoSoDaHu_FaMoFaBroDaSoDaHu_FaMoMoSisDaSoDaHu_FaMoSisSoDaHu_HuBro_HuFaBroSo_HuFaFaBroSoSo_HuFaFaFaBroSoSoSo_HuFaFaMoSisSoSoSo_HuFaMoFaBroDaSoSo_HuFaMoMoSisDaSoSo_HuFaMoSisSoSo_HuMoBroDaSo_HuMoBroSoDaSo_HuMoFaBroDaSo_HuMoFaFaBroSoDaSo_HuMoFaFaSisSo_HuMoFaMoSisSoDaSo_HuMoFaSisSo_HuMoMoFaBroDaDaSo_HuMoMoMoSisDaDaSo_HuMoMoSisDaSo_HuMoSisSo_MoFaBroDaDaHu_MoFaFaBroSoDaDaHu_MoFaMoSisSoDaDaHu_MoMoFaBroDaDaDaHu_MoMoMoSisDaDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaBroSoSo_WiFaFaFaBroSoSoSo_WiFaFaMoSisSoSoSo_WiFaMoFaBroDaSoSo_WiFaMoMoSisDaSoSo_WiFaMoSisSoSo_WiMoBroDaSo_WiMoBroSoDaSo_WiMoFaBroDaSo_WiMoFaFaBroSoDaSo_WiMoFaFaSisSo_WiMoFaMoSisSoDaSo_WiMoFaSisSo_WiMoMoFaBroDaDaSo_WiMoMoMoSisDaDaSo_WiMoMoSisDaSo_WiMoSisSo"}
;; 0
%je_ou:0, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%je_ou:0, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%je_ou:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C).
;; 3
%je_ou:2, spice:0, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 4
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 5
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 6
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoMoMoSisDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 7
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoMoFaBroDaDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 8
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 9
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaMoSisSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 10
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuMoFaFaBroSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 11
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 12
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 13
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoMoSisDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 14
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaMoFaBroDaSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 15
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 16
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaFaMoSisSoSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 17
%je_ou:2, spice:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {HuFaFaFaBroSoSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 18
%je_ou:2, spice:1, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 19
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 20
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 21
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoMoMoSisDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 22
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoMoFaBroDaDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 23
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 24
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoFaMoSisSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 25
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiMoFaFaBroSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 26
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), male(Alter).
;; 27
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 28
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoMoSisDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 29
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaMoFaBroDaSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 30
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), male(Alter).
;; 31
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaFaMoSisSoSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 32
%je_ou:2, spice:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {WiFaFaFaBroSoSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), male(Alter).
;; 33
%je_ou:3, para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), husband(Alter, C).
;; 34
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), husband(Alter, F).
;; 35
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), husband(Alter, I).
;; 36
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoMoSisDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 37
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoMoFaBroDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 38
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), husband(Alter, I).
;; 39
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaMoSisSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 40
%je_ou:3, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {MoFaFaBroSoDaDaHu}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 41
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(F, D), husband(Alter, F).
;; 42
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), husband(Alter, I).
;; 43
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoMoSisDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 44
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaMoFaBroDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 45
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(I, G), husband(Alter, I).
;; 46
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaMoSisSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 47
%je_ou:3, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=10, S=1, Star=0,  {FaFaFaBroSoSoDaHu}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(L, J), husband(Alter, L).
;; 48
%je_ou:4, spice:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 49
%je_ou:4, spice:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 50
%je_ou:4, spice:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {HuMoBroSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 51
%je_ou:4, spice:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 52
%je_ou:4, spice:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 53
%je_ou:4, spice:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 54
%je_ou:4, spice:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 55
%je_ou:4, spice:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {WiMoBroSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 56
%je_ou:4, spice:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 57
%je_ou:4, spice:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


jutao(Alter, Ego) :-  female(Ego), pu_ko(Ego, Alter), female(Alter).
{"BroDa_FaBroSoDa_FaFaBroSoSoDa_FaMoSisSoSoDa_MoBroDaSoDa_MoFaBroDaSoDa_MoFaFaSisSoDa_MoFaSisSoDa_MoMoSisDaSoDa_MoSisSoDa"}
;; 0
%jutao:0, pu_ko:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), female(Alter).
;; 1
%jutao:0, pu_ko:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), female(Alter).
;; 2
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), female(Alter).
;; 3
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), female(Alter).
;; 4
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), female(Alter).
;; 5
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), female(Alter).
;; 6
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), female(Alter).
;; 7
%jutao:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), female(Alter).
;; 8
%jutao:0, pu_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Ego, E), female(Alter).
;; 9
%jutao:0, pu_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Ego, F), female(Alter).
;; 10
%jutao:0, pu_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Ego, G), female(Alter).
;; 11
%jutao:0, pu_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F), female(Alter).


jutau(Alter, Ego) :-  female(Ego), pu_ko(Ego, Alter), male(Alter).
{"BroSo_FaBroSoSo_FaFaBroSoSoSo_FaMoSisSoSoSo_MoBroDaSoSo_MoFaBroDaSoSo_MoFaFaSisSoSo_MoFaSisSoSo_MoMoSisDaSoSo_MoSisSoSo"}
;; 0
%jutau:0, pu_ko:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), male(Alter).
;; 1
%jutau:0, pu_ko:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego), male(Alter).
;; 2
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), male(Alter).
;; 3
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), male(Alter).
;; 4
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), male(Alter).
;; 5
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), female(Ego), male(Alter).
;; 6
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), male(Alter).
;; 7
%jutau:0, pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), female(Ego), male(Alter).
;; 8
%jutau:0, pu_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Ego, E), male(Alter).
;; 9
%jutau:0, pu_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Ego, F), male(Alter).
;; 10
%jutau:0, pu_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Ego, G), male(Alter).
;; 11
%jutau:0, pu_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Ego, F), male(Alter).


mom_bro[aux]06(Alter, Ego) :-  mother(A, Ego), brother(Alter, A).
                           |   mother(A, Ego), brother(B, A), son(Alter, B).
                           |   mother(A, Ego), brother(B, A), son(C, B), son(Alter, C).
                           |   mother(A, Ego), mom_sis[aux]06(B, A), son(Alter, B).
;; 0
%mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 2
%mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 3
%mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Alter, E).
;; 4
%mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 5
%mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Alter, G).
;; 6
%mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 7
%mom_bro[aux]06:3, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).


mom_in_law[aux]06(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
                              |  [ext],  spice(A, Ego), mother(B, A), para_gen[aux]06b(Alter, B).
                              |  [ext],  spice(A, Ego), mom_sis[aux]06(Alter, A).
;; 0
%mom_in_law[aux]06:0, spice:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(Alter, A).
;; 1
%mom_in_law[aux]06:0, spice:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(Alter, A).
;; 2
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 3
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 4
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 5
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 6
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 7
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 8
%mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 9
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 10
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 11
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 12
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 13
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 14
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 15
%mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 16
%mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 18
%mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 19
%mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 20
%mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 21
%mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 22
%mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 23
%mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 24
%mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 25
%mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).


mom_sis[aux]06(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
                           |   mother(A, Ego), brother(B, A), daughter(Alter, B).
                           |   mother(A, Ego), brother(B, A), son(C, B), daughter(Alter, C).
                           |   mother(A, Ego), father(B, A), sister(Alter, B).
                           |   mother(A, Ego), father(B, A), father(C, B), sister(Alter, C).
;; 0
%mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 2
%mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 3
%mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).


mom_sis[aux]06jr(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), younger(Alter, A).
                             |   mother(A, Ego), brother(B, A), daughter(Alter, B), younger(B, A).
                             |   mother(A, Ego), brother(B, A), son(C, B), daughter(Alter, C), younger(B, A).
                             |   mother(A, Ego), father(B, A), sister(Alter, B), younger(Alter, B).
                             |   mother(A, Ego), father(B, A), father(C, B), sister(Alter, C), younger(Alter, C).
;; 0
%mom_sis[aux]06jr:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 1
%mom_sis[aux]06jr:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), younger(D, A).
;; 2
%mom_sis[aux]06jr:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), younger(D, A).
;; 3
%mom_sis[aux]06jr:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), younger(Alter, B).
;; 4
%mom_sis[aux]06jr:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter), younger(Alter, C).


mom_sis[aux]06sr(Alter, Ego) :-  mother(A, Ego), sister(Alter, A), elder(Alter, A).
                             |   mother(A, Ego), brother(B, A), daughter(Alter, B), elder(B, A).
                             |   mother(A, Ego), brother(B, A), son(C, B), daughter(Alter, C), elder(B, A).
                             |   mother(A, Ego), father(B, A), sister(Alter, B), elder(Alter, B).
                             |   mother(A, Ego), father(B, A), father(C, B), sister(Alter, C), elder(Alter, C).
;; 0
%mom_sis[aux]06sr:0, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 1
%mom_sis[aux]06sr:1, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D), elder(D, A).
;; 2
%mom_sis[aux]06sr:2, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E), elder(D, A).
;; 3
%mom_sis[aux]06sr:3, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter), elder(Alter, B).
;; 4
%mom_sis[aux]06sr:4, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter), elder(Alter, C).


najeo(Alter, Ego) :-  male(Ego), cu_eu(Ego, Alter), female(Alter).
                  |   female(Ego), cu_eo(Ego, Alter), female(Alter).
{"BroDaDa_BroDaDaDa_BroDaSoDa_BroSoDa_DaDa_FaBroDaDaDa_FaBroDaSoDa_FaBroSoDaDa_FaBroSoSoDa_FaFaSisDaDa_FaFaSisSoDa_FaSisDaDa_FaSisSoDa_MoFaFaSisDaDaDa_MoFaFaSisDaSoDa_MoFaSisDaDaDa_MoFaSisDaSoDa_MoSisDaDaDa_MoSisDaSoDa_MoSisSoDaDa_MoSisSoSoDa_SisDaDa_SisSoDa_SoDa"}
;; 0
%najeo:0, cu_eu:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 male(Ego), mother(A, Alter), father(Ego, A), female(Alter).
;; 1
%najeo:0, cu_eu:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 male(Ego), father(A, Alter), father(Ego, A), female(Alter).
;; 2
%najeo:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 3
%najeo:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 4
%najeo:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 5
%najeo:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 6
%najeo:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 7
%najeo:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 8
%najeo:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 9
%najeo:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 10
%najeo:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 11
%najeo:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 12
%najeo:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 13
%najeo:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  male(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), female(Alter).
;; 14
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 15
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), female(Alter).
;; 16
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F), female(Alter).
;; 17
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), female(Alter).
;; 18
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), female(Alter).
;; 19
%najeo:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H), female(Alter).
;; 20
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 21
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), female(Alter).
;; 22
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F), female(Alter).
;; 23
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), female(Alter).
;; 24
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), female(Alter).
;; 25
%najeo:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H), female(Alter).
;; 26
%najeo:1, cu_eo:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 female(Ego), mother(A, Alter), mother(Ego, A), female(Alter).
;; 27
%najeo:1, cu_eo:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 female(Ego), father(A, Alter), mother(Ego, A), female(Alter).
;; 28
%najeo:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 29
%najeo:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 30
%najeo:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 31
%najeo:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 32
%najeo:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 33
%najeo:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 34
%najeo:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 35
%najeo:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 36
%najeo:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 37
%najeo:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 38
%najeo:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 39
%najeo:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  female(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), female(Alter).
;; 40
%najeo:1, cu_eo:2, parents:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 41
%najeo:1, cu_eo:2, parents:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E), female(Alter).
;; 42
%najeo:1, cu_eo:2, parents:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F), female(Alter).
;; 43
%najeo:1, cu_eo:2, parents:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 44
%najeo:1, cu_eo:2, parents:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 45
%najeo:1, cu_eo:2, parents:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E), female(Alter).
;; 46
%najeo:1, cu_eo:2, parents:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F), female(Alter).
;; 47
%najeo:1, cu_eo:2, parents:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).


najeu(Alter, Ego) :-  male(Ego), cu_eu(Ego, Alter), male(Alter).
                  |   female(Ego), cu_eo(Ego, Alter), male(Alter).
{"BroDaDaSo_BroDaSo_BroDaSoSo_BroSoSo_DaSo_FaBroDaDaSo_FaBroDaSoSo_FaBroSoDaSo_FaBroSoSoSo_FaFaSisDaSo_FaFaSisSoSo_FaSisDaSo_FaSisSoSo_MoFaFaSisDaDaSo_MoFaFaSisDaSoSo_MoFaSisDaDaSo_MoFaSisDaSoSo_MoSisDaDaSo_MoSisDaSoSo_MoSisSoDaSo_MoSisSoSoSo_SisDaSo_SisSoSo_SoSo"}
;; 0
%najeu:0, cu_eu:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 male(Ego), mother(A, Alter), father(Ego, A), male(Alter).
;; 1
%najeu:0, cu_eu:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 male(Ego), father(A, Alter), father(Ego, A), male(Alter).
;; 2
%najeu:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 3
%najeu:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 4
%najeu:0, cu_eu:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 5
%najeu:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 6
%najeu:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 7
%najeu:0, cu_eu:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 8
%najeu:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 9
%najeu:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 10
%najeu:0, cu_eu:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 11
%najeu:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 12
%najeu:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 13
%najeu:0, cu_eu:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  male(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), male(Ego), male(Alter).
;; 14
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 15
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), male(Alter).
;; 16
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F), male(Alter).
;; 17
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), male(Alter).
;; 18
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), male(Alter).
;; 19
%najeu:0, cu_eu:2, parents:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H), male(Alter).
;; 20
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 21
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E), male(Alter).
;; 22
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F), male(Alter).
;; 23
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), male(Alter).
;; 24
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G), male(Alter).
;; 25
%najeu:0, cu_eu:2, parents:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext],  male(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H), male(Alter).
;; 26
%najeu:1, cu_eo:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 female(Ego), mother(A, Alter), mother(Ego, A), male(Alter).
;; 27
%najeu:1, cu_eo:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 female(Ego), father(A, Alter), mother(Ego, A), male(Alter).
;; 28
%najeu:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 29
%najeu:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 30
%najeu:1, cu_eo:1, parents:0, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 31
%najeu:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 32
%najeu:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 33
%najeu:1, cu_eo:1, parents:0, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  female(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 34
%najeu:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 35
%najeu:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 36
%najeu:1, cu_eo:1, parents:1, parents:0, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 37
%najeu:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 38
%najeu:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 39
%najeu:1, cu_eo:1, parents:1, parents:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  female(Ego), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), female(Ego), male(Alter).
;; 40
%najeu:1, cu_eo:2, parents:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 41
%najeu:1, cu_eo:2, parents:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E), male(Alter).
;; 42
%najeu:1, cu_eo:2, parents:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F), male(Alter).
;; 43
%najeu:1, cu_eo:2, parents:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
[ext],  female(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 44
%najeu:1, cu_eo:2, parents:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 45
%najeu:1, cu_eo:2, parents:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E), male(Alter).
;; 46
%najeu:1, cu_eo:2, parents:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F), male(Alter).
;; 47
%najeu:1, cu_eo:2, parents:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
[ext],  female(Ego), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).


para_gen[aux]06a(Alter, Ego) :-  sibling(Alter, Ego).
                             |   parents(A, Ego), para_gen[aux]06b(B, A), child(Alter, B).
;; 0
%para_gen[aux]06a:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 3
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 4
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 5
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 6
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 7
%para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 8
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D).
;; 9
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 10
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 11
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 12
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 13
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 14
%para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).


para_gen[aux]06b(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Alter), gender(A, Ego).
                             |   parents(A, Ego), para_gen[aux]06b(B, A), child(Alter, B), gender(C, Alter), gender(C, Ego).
;; 0
%para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 1
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 2
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 3
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 4
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 5
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 6
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 7
%para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Alter), gender(C, Ego).
;; 8
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 9
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 10
%para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 11
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 12
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 13
%para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).


para_gen[aux]06jr_a(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego).
                                |   parents(A, Ego), para_gen[aux]06jr_b(B, A), child(Alter, B).
;; 0
%para_gen[aux]06jr_a:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego).
;; 1
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 3
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 4
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 5
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 6
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 7
%para_gen[aux]06jr_a:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 8
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D).
;; 9
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 10
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 11
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 12
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 13
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 14
%para_gen[aux]06jr_a:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), younger(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).


para_gen[aux]06jr_b(Alter, Ego) :-  sibling(Alter, Ego), younger(Alter, Ego), gender(A, Alter), gender(A, Ego).
                                |   parents(A, Ego), para_gen[aux]06jr_b(B, A), child(Alter, B), gender(C, Alter), gender(C, Ego).
;; 0
%para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), gender(C, Alter), gender(C, Ego).
;; 1
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 2
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 3
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 4
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 5
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 6
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 7
%para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), younger(Alter, Ego), gender(C, Alter), gender(C, Ego).
;; 8
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 9
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 10
%para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 11
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), younger(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 12
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:0, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 13
%para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:1, parents:1, para_gen[aux]06jr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), younger(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).


para_gen[aux]06sr_a(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego).
                                |   parents(A, Ego), para_gen[aux]06sr_b(B, A), child(Alter, B).
;; 0
%para_gen[aux]06sr_a:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego).
;; 1
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D).
;; 2
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 3
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 4
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 5
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 6
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 7
%para_gen[aux]06sr_a:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 8
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D).
;; 9
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 10
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 11
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 12
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G).
;; 13
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).
;; 14
%para_gen[aux]06sr_a:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), elder(F, C), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(J, H), gender(K, J), gender(K, A), child(Alter, J).


para_gen[aux]06sr_b(Alter, Ego) :-  sibling(Alter, Ego), elder(Alter, Ego), gender(A, Alter), gender(A, Ego).
                                |   parents(A, Ego), para_gen[aux]06sr_b(B, A), child(Alter, B), gender(C, Alter), gender(C, Ego).
;; 0
%para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), gender(C, Alter), gender(C, Ego).
;; 1
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 2
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 3
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 4
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 5
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 6
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 7
%para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), elder(Alter, Ego), gender(C, Alter), gender(C, Ego).
;; 8
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 9
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 10
%para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 11
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), elder(D, A), gender(E, D), gender(E, A), child(Alter, D), gender(F, Alter), gender(F, Ego).
;; 12
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:0, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).
;; 13
%para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:1, parents:1, para_gen[aux]06sr_b:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), elder(E, B), gender(F, E), gender(F, B), child(G, E), gender(H, G), gender(H, A), child(Alter, G), gender(I, Alter), gender(I, Ego).


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


pu_ko(Alter, Ego) :-  father(A, Ego), sister(Alter, A).
                  |  [ext],  father(A, Ego), para_gen[aux]06a(Alter, A), female(Alter).
                  |  [ext],  father(A, Ego), mom_sis[aux]06(B, A), daughter(Alter, B).
{"FaFaBroDa_FaFaFaBroSoDa_FaFaFaFaBroSoSoDa_FaFaFaMoSisSoSoDa_FaFaMoFaBroDaSoDa_FaFaMoMoSisDaSoDa_FaFaMoSisSoDa_FaMoBroDaDa_FaMoBroSoDaDa_FaMoFaBroDaDa_FaMoFaFaBroSoDaDa_FaMoFaFaSisDa_FaMoFaMoSisSoDaDa_FaMoFaSisDa_FaMoMoFaBroDaDaDa_FaMoMoMoSisDaDaDa_FaMoMoSisDaDa_FaMoSisDa_FaSis"}
;; 0
%pu_ko:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%pu_ko:1, para_gen[aux]06a:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 3
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 4
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoMoSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 5
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoMoFaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 6
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 7
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaMoSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 8
%pu_ko:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaMoFaFaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 9
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Alter, E), female(Alter).
;; 10
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 11
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoMoSisDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 12
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaMoFaBroDaSoDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 13
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Alter, H), female(Alter).
;; 14
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaMoSisSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 15
%pu_ko:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=11, S=0, Star=0,  {FaFaFaFaBroSoSoDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(K, I), gender(L, K), gender(L, B), child(Alter, K), female(Alter).
;; 16
%pu_ko:2, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(Alter, E).
;; 17
%pu_ko:2, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%pu_ko:2, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), daughter(Alter, G).
;; 19
%pu_ko:2, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(Alter, F).
;; 20
%pu_ko:2, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(Alter, G).


rujo(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%rujo:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


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


u_chao(Alter, Ego) :-  male(Ego), cha_cha(Ego, Alter), female(Alter).
{"FaBroDaDa_FaFaBroSoDaDa_FaFaSisDa_FaMoSisSoDaDa_FaSisDa_MoBroDaDaDa_MoFaBroDaDaDa_MoFaFaSisDaDa_MoFaSisDaDa_MoMoSisDaDaDa_MoSisDaDa_SisDa"}
;; 0
%u_chao:0, cha_cha:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 1
%u_chao:0, cha_cha:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 2
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 3
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), female(Alter).
;; 4
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), female(Alter).
;; 5
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), female(Alter).
;; 6
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), female(Alter).
;; 7
%u_chao:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), female(Alter).
;; 8
%u_chao:0, cha_cha:2, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), female(Alter).
;; 9
%u_chao:0, cha_cha:2, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Ego, D), female(Alter).
;; 10
%u_chao:0, cha_cha:2, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Ego, E), female(Alter).
;; 11
%u_chao:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), female(Alter).
;; 12
%u_chao:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Ego, F), female(Alter).
;; 13
%u_chao:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Ego, G), female(Alter).
;; 14
%u_chao:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), female(Alter).


u_chau(Alter, Ego) :-  male(Ego), cha_cha(Ego, Alter), male(Alter).
{"FaBroDaSo_FaFaBroSoDaSo_FaFaSisSo_FaMoSisSoDaSo_FaSisSo_MoBroDaDaSo_MoFaBroDaDaSo_MoFaFaSisDaSo_MoFaSisDaSo_MoMoSisDaDaSo_MoSisDaSo_SisSo"}
;; 0
%u_chau:0, cha_cha:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 1
%u_chau:0, cha_cha:1, para_gen[aux]06a:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 2
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 3
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), male(Alter).
;; 4
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), male(Alter).
;; 5
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, E), gender(F, B), child(Ego, E), male(Ego), male(Alter).
;; 6
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), male(Alter).
;; 7
%u_chau:0, cha_cha:1, para_gen[aux]06a:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(H, F), gender(I, H), gender(I, B), child(Ego, H), male(Ego), male(Alter).
;; 8
%u_chau:0, cha_cha:2, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego), male(Alter).
;; 9
%u_chau:0, cha_cha:2, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Ego, D), male(Alter).
;; 10
%u_chau:0, cha_cha:2, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Ego, E), male(Alter).
;; 11
%u_chau:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(Ego, E), male(Alter).
;; 12
%u_chau:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Ego, F), male(Alter).
;; 13
%u_chau:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(G, F), son(Ego, G), male(Alter).
;; 14
%u_chau:0, cha_cha:2, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  male(Ego), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F), male(Alter).


uju(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%uju:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


vao(Alter, Ego) :-  mom_in_law[aux]06(Alter, Ego).
                |   mom_in_law[aux]06(Ego, Alter).
{"BroDaDaHu_BroDaSoWi_BroSoDaDaHu_BroSoDaSoWi_DaHu_FaBroDaDaHu_FaBroDaSoWi_FaFaBroSoDaDaHu_FaFaBroSoDaSoWi_FaFaSisDaHu_FaFaSisSoWi_FaMoSisSoDaDaHu_FaMoSisSoDaSoWi_FaSisDaHu_FaSisSoWi_HuMo_HuMoBroDa_HuMoBroSoDa_HuMoFaBroDa_HuMoFaFaBroSoDa_HuMoFaFaSis_HuMoFaMoSisSoDa_HuMoFaSis_HuMoMoFaBroDaDa_HuMoMoMoSisDaDa_HuMoMoSisDa_HuMoSis_MoFaBroDaDaDaHu_MoFaBroDaDaSoWi_MoMoSisDaDaDaHu_MoMoSisDaDaSoWi_MoSisDaDaHu_MoSisDaSoWi_SisDaHu_SisSoWi_SoWi_WiMo_WiMoBroDa_WiMoBroSoDa_WiMoFaBroDa_WiMoFaFaBroSoDa_WiMoFaFaSis_WiMoFaMoSisSoDa_WiMoFaSis_WiMoMoFaBroDaDa_WiMoMoMoSisDaDa_WiMoMoSisDa_WiMoSis"}
;; 0
%vao:0, mom_in_law[aux]06:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%vao:0, mom_in_law[aux]06:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 2
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 3
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 4
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoMoSisDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 5
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoFaBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 6
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 7
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 8
%vao:0, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaFaBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 9
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 10
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 11
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 12
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 13
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 14
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 15
%vao:0, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 16
%vao:0, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%vao:0, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 18
%vao:0, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 19
%vao:0, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 20
%vao:0, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {HuMoFaFaSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 21
%vao:0, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 22
%vao:0, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Alter, E).
;; 23
%vao:0, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 24
%vao:0, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 25
%vao:0, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=3,  PC=7, S=1, Star=0,  {WiMoFaFaSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 26
%vao:1, mom_in_law[aux]06:0, spice:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 husband(A, Alter), mother(Ego, A).
;; 27
%vao:1, mom_in_law[aux]06:0, spice:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), mother(Ego, A).
;; 28
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, Ego), gender(E, B).
;; 29
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 30
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 31
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 32
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 33
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 34
%vao:1, mom_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 35
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, Ego), gender(E, B).
;; 36
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 37
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 38
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 39
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 40
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 41
%vao:1, mom_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 42
%vao:1, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 43
%vao:1, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E).
;; 44
%vao:1, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F).
;; 45
%vao:1, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).
;; 46
%vao:1, mom_in_law[aux]06:2, spice:0, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego).
;; 47
%vao:1, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego).
;; 48
%vao:1, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(Ego, E).
;; 49
%vao:1, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Ego, F).
;; 50
%vao:1, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego).
;; 51
%vao:1, mom_in_law[aux]06:2, spice:1, mom_sis[aux]06:4, sister:0, sibling:0%
 Lvl=-3,  PC=7, S=1, Star=0,  {BroSoDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego).


vau(Alter, Ego) :-  dad_in_law[aux]06(Alter, Ego).
                |   dad_in_law[aux]06(Ego, Alter).
{"BroDaHu_BroSoWi_DaHu_FaBroSoDaHu_FaBroSoSoWi_FaFaBroSoSoDaHu_FaFaBroSoSoSoWi_FaFaSisDaHu_FaFaSisSoWi_FaMoSisSoSoDaHu_FaMoSisSoSoSoWi_FaSisDaHu_FaSisSoWi_HuFa_HuFaBro_HuFaFaBroSo_HuFaFaFaBroSoSo_HuFaFaMoSisSoSo_HuFaMoFaBroDaSo_HuFaMoMoSisDaSo_HuFaMoSisSo_HuMoBro_HuMoBroSo_HuMoBroSoSo_HuMoMoBroDaSo_HuMoMoBroSoDaSo_HuMoMoFaSisSo_HuMoMoSisSo_MoBroDaDaDaHu_MoBroDaDaSoWi_MoFaBroDaSoDaHu_MoFaBroDaSoSoWi_MoFaFaSisDaDaHu_MoFaFaSisDaSoWi_MoFaSisDaDaHu_MoFaSisDaSoWi_MoMoSisDaSoDaHu_MoMoSisDaSoSoWi_MoSisDaDaHu_MoSisDaSoWi_MoSisSoDaHu_MoSisSoSoWi_SisDaHu_SisSoWi_SoWi_WiFa_WiFaBro_WiFaFaBroSo_WiFaFaFaBroSoSo_WiFaFaMoSisSoSo_WiFaMoFaBroDaSo_WiFaMoMoSisDaSo_WiFaMoSisSo_WiMoBro_WiMoBroSo_WiMoBroSoSo_WiMoMoBroDaSo_WiMoMoBroSoDaSo_WiMoMoFaSisSo_WiMoMoSisSo"}
;; 0
%vau:0, dad_in_law[aux]06:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%vau:0, dad_in_law[aux]06:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 3
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 4
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoMoSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 5
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 6
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 7
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaMoSisSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 8
%vau:0, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 9
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, Alter), gender(E, B).
;; 10
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 11
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 12
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 13
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Alter, F), gender(H, Alter), gender(H, B).
;; 14
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 15
%vau:0, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Alter, I), gender(K, Alter), gender(K, B).
;; 16
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 18
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 19
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 20
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 21
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {HuMoMoBroSoDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 22
%vau:0, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 23
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 24
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).
;; 25
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 26
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Alter, F).
;; 27
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Alter, G).
;; 28
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {WiMoMoBroSoDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Alter, H).
;; 29
%vau:0, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Alter, G).
;; 30
%vau:1, dad_in_law[aux]06:0, spice:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 husband(A, Alter), father(Ego, A).
;; 31
%vau:1, dad_in_law[aux]06:0, spice:1%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 wife(A, Alter), father(Ego, A).
;; 32
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, Ego), gender(E, B).
;; 33
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 34
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 35
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoSoWi}  
[ext],  husband(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 36
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 37
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 38
%vau:1, dad_in_law[aux]06:1, spice:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoSoWi}  
[ext],  husband(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 39
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), gender(E, Ego), gender(E, B).
;; 40
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 41
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 42
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
[ext],  wife(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 43
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), gender(G, F), gender(G, C), child(Ego, F), gender(H, Ego), gender(H, B).
;; 44
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:0, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 45
%vau:1, dad_in_law[aux]06:1, spice:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:1, parents:1, para_gen[aux]06b:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
[ext],  wife(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), gender(H, G), gender(H, D), child(I, G), gender(J, I), gender(J, C), child(Ego, I), gender(K, Ego), gender(K, B).
;; 46
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 47
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E).
;; 48
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F).
;; 49
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 50
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G).
;; 51
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H).
;; 52
%vau:1, dad_in_law[aux]06:2, spice:0, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaSoWi}  
[ext],  husband(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G).
;; 53
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego).
;; 54
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Ego, E).
;; 55
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Ego, F).
;; 56
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:0, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(Ego, F).
;; 57
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:1, brother:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(Ego, G).
;; 58
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:2, brother:0, sibling:0%
 Lvl=1,  PC=9, S=1, Star=0,  {MoFaFaSisDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), son(Ego, H).
;; 59
%vau:1, dad_in_law[aux]06:2, spice:1, mom_bro[aux]06:3, mom_sis[aux]06:3, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
[ext],  wife(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(Ego, G).

