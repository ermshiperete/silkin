;;  Horn Clause Representation of Dravidian Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Dravidian") (author, "Thomas R. Trautmann") (date, "1981-01-01") (citation, "Thomas R. Trautmann DRAVIDIAN KINSHIP, 1981, Cambridge University Press, New York") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 1)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

akka(Alter, Ego) :-  sister(Alter, Ego), elder(Alter, Ego).
                 |  [ext],  parallel_cousin[aux]12(Alter, Ego), female(Alter), elder(Alter, Ego).
                 |  [ext],  spouse(A, Ego), cross_cousin[aux]12(Alter, A), female(Alter), elder(Alter, A).
                 |  [ext],  cross_cousin[aux]12(A, Ego), spouse(Alter, A), female(Alter), elder(A, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaSisDaDa_FaMoBroDaDa_FaMoSisSoDa_FaSisSoWi_HuFaSisDa_HuMoBroDa_MoBroSoWi_MoFaBroDaDa_MoFaSisSoDa_MoMoBroSoDa_MoMoSisDaDa_MoSisDa_Sis_WiFaSisDa_WiMoBroDa"}
;; 0
%akka:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), elder(Alter, Ego).
;; 1
%akka:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 2
%akka:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 3
%akka:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 4
%akka:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 5
%akka:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 6
%akka:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 7
%akka:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 8
%akka:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 9
%akka:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 10
%akka:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 11
%akka:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 12
%akka:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 13
%akka:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 14
%akka:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 15
%akka:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 16
%akka:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), elder(Alter, Ego).
;; 17
%akka:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 18
%akka:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), elder(Alter, Ego).
;; 19
%akka:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 20
%akka:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), elder(Alter, Ego).
;; 21
%akka:2, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), elder(Alter, A).
;; 22
%akka:2, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), elder(Alter, A).
;; 23
%akka:2, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), elder(Alter, A).
;; 24
%akka:2, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), elder(Alter, A).
;; 25
%akka:3, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), elder(G, Ego).
;; 26
%akka:3, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), elder(G, Ego).
;; 27
%akka:3, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), elder(G, Ego).
;; 28
%akka:3, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), elder(G, Ego).


amma(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%amma:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


annan(Alter, Ego) :-  brother(Alter, Ego), elder(Alter, Ego).
                  |  [ext],  parallel_cousin[aux]12(Alter, Ego), male(Alter), elder(Alter, Ego).
                  |  [ext],  spouse(A, Ego), cross_cousin[aux]12(Alter, A), male(Alter), elder(Alter, A).
                  |  [ext],  cross_cousin[aux]12(A, Ego), spouse(Alter, A), male(Alter), elder(A, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisDaSo_FaMoBroDaSo_FaMoSisSoSo_FaSisDaHu_HuFaSisSo_HuMoBroSo_MoBroDaHu_MoFaBroDaSo_MoFaSisSoSo_MoMoBroSoSo_MoMoSisDaSo_MoSisSo_WiFaSisSo_WiMoBroSo"}
;; 0
%annan:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), elder(Alter, Ego).
;; 1
%annan:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 2
%annan:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 3
%annan:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 4
%annan:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 5
%annan:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 6
%annan:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 7
%annan:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 8
%annan:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 9
%annan:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 10
%annan:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 11
%annan:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 12
%annan:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 13
%annan:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 14
%annan:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 15
%annan:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 16
%annan:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), elder(Alter, Ego).
;; 17
%annan:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 18
%annan:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), elder(Alter, Ego).
;; 19
%annan:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 20
%annan:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), elder(Alter, Ego).
;; 21
%annan:2, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), elder(Alter, A).
;; 22
%annan:2, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), elder(Alter, A).
;; 23
%annan:2, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), elder(Alter, A).
;; 24
%annan:2, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), elder(Alter, A).
;; 25
%annan:3, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), elder(G, Ego).
;; 26
%annan:3, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), elder(G, Ego).
;; 27
%annan:3, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), elder(G, Ego).
;; 28
%annan:3, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), elder(G, Ego).


appa(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%appa:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


attai(Alter, Ego) :-  cross_up1[aux]12(Alter, Ego), female(Alter).
                  |   spice(A, Ego), mother(Alter, A).
{"FaFaBroDa_FaFaSisSoWi_FaMoBroSoWi_FaMoSisDa_FaSis_HuFaFaSisDa_HuFaMoBroDa_HuMo_HuMoFaBroDa_HuMoMoSisDa_HuMoSis_MoBroWi_MoFaBroSoWi_MoFaSisDa_MoMoBroDa_MoMoSisSoWi_WiFaFaSisDa_WiFaMoBroDa_WiMo_WiMoFaBroDa_WiMoMoSisDa_WiMoSis"}
;; 0
%attai:0, cross_up1[aux]12:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), female(Alter).
;; 1
%attai:0, cross_up1[aux]12:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)), female(Alter).
;; 2
%attai:0, cross_up1[aux]12:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)), female(Alter).
;; 3
%attai:0, cross_up1[aux]12:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter), female(Alter).
;; 4
%attai:0, cross_up1[aux]12:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter), female(Alter).
;; 5
%attai:0, cross_up1[aux]12:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), spouse(Alter, D), female(Alter).
;; 6
%attai:0, cross_up1[aux]12:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G), female(Alter).
;; 7
%attai:0, cross_up1[aux]12:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G), female(Alter).
;; 8
%attai:0, cross_up1[aux]12:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H), female(Alter).
;; 9
%attai:0, cross_up1[aux]12:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H), female(Alter).
;; 10
%attai:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter), female(Alter).
;; 11
%attai:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), female(Alter).
;; 12
%attai:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), female(Alter).
;; 13
%attai:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoBroDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), female(Alter).
;; 14
%attai:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaSisDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), female(Alter).
;; 15
%attai:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter), female(Alter).
;; 16
%attai:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), female(Alter).
;; 17
%attai:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), female(Alter).
;; 18
%attai:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), female(Alter).
;; 19
%attai:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), female(Alter).
;; 20
%attai:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 21
%attai:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).


attan(Alter, Ego) :-  cross_cousin[aux]12(Alter, Ego), elder(Alter, Ego), male(Alter).
                  |   spice(A, Ego), brother(Alter, A), elder(Alter, A).
                  |  [ext],  spouse(A, Ego), parallel_cousin[aux]12(Alter, A), elder(Alter, A), male(Alter).
                  |  [ext],  sister(A, Ego), husband(Alter, A), elder(A, Ego).
                  |  [ext],  parallel_cousin[aux]12(A, Ego), husband(Alter, A), elder(A, Ego).
{"FaBroDaHu_FaFaBroDaSo_FaFaBroSoDaHu_FaFaSisDaDaHu_FaFaSisSoSo_FaMoBroDaDaHu_FaMoBroSoSo_FaMoSisDaSo_FaMoSisSoDaHu_FaSisSo_HuBro_HuFaBroSo_HuFaFaSisDaSo_HuFaMoBroDaSo_HuMoFaSisSoSo_HuMoMoBroSoSo_HuMoSisSo_MoBroSo_MoFaBroDaDaHu_MoFaBroSoSo_MoFaSisDaSo_MoFaSisSoDaHu_MoMoBroDaSo_MoMoBroSoDaHu_MoMoSisDaDaHu_MoMoSisSoSo_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaSisDaSo_WiFaMoBroDaSo_WiMoFaSisSoSo_WiMoMoBroSoSo_WiMoSisSo"}
;; 0
%attan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), male(Alter).
;; 1
%attan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 2
%attan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 3
%attan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 4
%attan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 5
%attan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), male(Alter).
;; 6
%attan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 7
%attan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 8
%attan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 9
%attan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 10
%attan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), male(Alter).
;; 11
%attan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 12
%attan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 13
%attan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 14
%attan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 15
%attan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), male(Alter).
;; 16
%attan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 17
%attan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), male(Alter).
;; 18
%attan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 19
%attan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), male(Alter).
;; 20
%attan:1, spice:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 21
%attan:1, spice:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 22
%attan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), male(Alter).
;; 23
%attan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 24
%attan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 25
%attan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), male(Alter).
;; 26
%attan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 27
%attan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 28
%attan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), male(Alter).
;; 29
%attan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 30
%attan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 31
%attan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), male(Alter).
;; 32
%attan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 33
%attan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), male(Alter).
;; 34
%attan:3, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C), elder(C, Ego).
;; 35
%attan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), elder(F, Ego).
;; 36
%attan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 37
%attan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 38
%attan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 39
%attan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 40
%attan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), elder(F, Ego).
;; 41
%attan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 42
%attan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 43
%attan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 44
%attan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 45
%attan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), elder(F, Ego).
;; 46
%attan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 47
%attan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 48
%attan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 49
%attan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 50
%attan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), elder(F, Ego).
;; 51
%attan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 52
%attan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), elder(I, Ego).
;; 53
%attan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).
;; 54
%attan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), elder(K, Ego).


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


cinnamma(Alter, Ego) :-  para_up1[aux]12younger(Alter, Ego), female(Alter).
{"FaBroWi_FaFaBroSoWi_FaFaSisDa_FaMoBroDa_FaMoSisSoWi_HuFaFaBroDa_HuFaMoSisDa_HuFaSis_HuMoFaSisDa_HuMoMoBroDa_MoFaBroDa_MoFaSisSoWi_MoMoBroSoWi_MoMoSisDa_MoSis_WiFaFaBroDa_WiFaMoSisDa_WiFaSis_WiMoFaSisDa_WiMoMoBroDa"}
;; 0
%cinnamma:0, para_up1[aux]12younger:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A), female(Alter).
;; 1
%cinnamma:0, para_up1[aux]12younger:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A), female(Alter).
;; 2
%cinnamma:0, para_up1[aux]12younger:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A), female(Alter).
;; 3
%cinnamma:0, para_up1[aux]12younger:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A), female(Alter).
;; 4
%cinnamma:0, para_up1[aux]12younger:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A), female(Alter).
;; 5
%cinnamma:0, para_up1[aux]12younger:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), younger(D, A), spouse(Alter, D), female(Alter).
;; 6
%cinnamma:0, para_up1[aux]12younger:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G), female(Alter).
;; 7
%cinnamma:0, para_up1[aux]12younger:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G), female(Alter).
;; 8
%cinnamma:0, para_up1[aux]12younger:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H), female(Alter).
;; 9
%cinnamma:0, para_up1[aux]12younger:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H), female(Alter).
;; 10
%cinnamma:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B), female(Alter).
;; 11
%cinnamma:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), female(Alter).
;; 12
%cinnamma:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), female(Alter).
;; 13
%cinnamma:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoBroDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), female(Alter).
;; 14
%cinnamma:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), female(Alter).
;; 15
%cinnamma:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B), female(Alter).
;; 16
%cinnamma:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), female(Alter).
;; 17
%cinnamma:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), female(Alter).
;; 18
%cinnamma:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), female(Alter).
;; 19
%cinnamma:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), female(Alter).


cinnappa(Alter, Ego) :-  para_up1[aux]12younger(Alter, Ego), male(Alter).
{"FaBro_FaFaBroSo_FaFaSisDaHu_FaMoBroDaHu_FaMoSisSo_HuFaFaSisSo_HuFaMoBroSo_HuMoBro_HuMoFaBroSo_HuMoMoSisSo_MoFaBroDaHu_MoFaSisSo_MoMoBroSo_MoMoSisDaHu_MoSisHu_WiFaFaSisSo_WiFaMoBroSo_WiMoBro_WiMoFaBroSo_WiMoMoSisSo"}
;; 0
%cinnappa:0, para_up1[aux]12younger:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A), male(Alter).
;; 1
%cinnappa:0, para_up1[aux]12younger:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A), male(Alter).
;; 2
%cinnappa:0, para_up1[aux]12younger:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A), male(Alter).
;; 3
%cinnappa:0, para_up1[aux]12younger:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A), male(Alter).
;; 4
%cinnappa:0, para_up1[aux]12younger:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A), male(Alter).
;; 5
%cinnappa:0, para_up1[aux]12younger:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), younger(D, A), spouse(Alter, D), male(Alter).
;; 6
%cinnappa:0, para_up1[aux]12younger:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G), male(Alter).
;; 7
%cinnappa:0, para_up1[aux]12younger:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G), male(Alter).
;; 8
%cinnappa:0, para_up1[aux]12younger:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H), male(Alter).
;; 9
%cinnappa:0, para_up1[aux]12younger:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H), male(Alter).
;; 10
%cinnappa:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B), male(Alter).
;; 11
%cinnappa:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), male(Alter).
;; 12
%cinnappa:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), male(Alter).
;; 13
%cinnappa:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoBroSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), male(Alter).
;; 14
%cinnappa:0, para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaSisSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), male(Alter).
;; 15
%cinnappa:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B), male(Alter).
;; 16
%cinnappa:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), male(Alter).
;; 17
%cinnappa:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B), male(Alter).
;; 18
%cinnappa:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), male(Alter).
;; 19
%cinnappa:0, para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B), male(Alter).


cross_cousin[aux]12(Alter, Ego) :-  female(Ego), parents(A, Ego), odd_gen[aux]12(B, A), child(Alter, B).
                                |   male(Ego), parents(A, Ego), odd_gen[aux]12(B, A), child(Alter, B).
;; 0
%cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 1
%cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 2
%cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 3
%cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 4
%cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 5
%cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 6
%cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 7
%cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 8
%cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 9
%cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 10
%cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 11
%cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 12
%cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 13
%cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 14
%cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 15
%cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 16
%cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 17
%cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 18
%cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).
;; 19
%cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H).


cross_up1[aux]12(Alter, Ego) :-  parent(A, Ego), odd_gen[aux]12(Alter, A).
                             |  [ext],  parent(A, Ego), odd_gen[aux]12(B, A), spouse(Alter, B).
                             |  [ext],  spice(A, Ego), parent(B, A), even_gen[aux]12(Alter, B).
;; 0
%cross_up1[aux]12:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%cross_up1[aux]12:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 2
%cross_up1[aux]12:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 3
%cross_up1[aux]12:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter).
;; 4
%cross_up1[aux]12:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter).
;; 5
%cross_up1[aux]12:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), spouse(Alter, D).
;; 6
%cross_up1[aux]12:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G).
;; 7
%cross_up1[aux]12:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G).
;; 8
%cross_up1[aux]12:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H).
;; 9
%cross_up1[aux]12:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H).
;; 10
%cross_up1[aux]12:2, spice:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter).
;; 11
%cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 12
%cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 13
%cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)).
;; 14
%cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)).
;; 15
%cross_up1[aux]12:2, spice:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter).
;; 16
%cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 17
%cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 18
%cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)).
;; 19
%cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)).


even_gen[aux]12(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(A, Alter).
                            |   parents(A, Ego), even_gen[aux]12(A, B), child(Alter, B), gender(C, Ego), gender(C, Alter).
                            |   parents(A, Ego), odd_gen[aux]12(A, B), child(Alter, B), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 0
%even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 1
%even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 2
%even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 3
%even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 4
%even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 5
%even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 6
%even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 7
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 8
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 9
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 10
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 11
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 12
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 13
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 14
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 15
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 16
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 17
%even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 18
%even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 19
%even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 20
%even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 21
%even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 22
%even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 23
%even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(K, Alter).
;; 24
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 25
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 26
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 27
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 28
%even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 29
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(H, Alter), not(equal(G, H)).
;; 30
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 31
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 32
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).
;; 33
%even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(Alter, C), gender(J, Ego), gender(K, Alter), not(equal(J, K)).


generation[aux]12(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]12gs(B, A), child(Alter, B).
;; 0
%generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).


generation[aux]12gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |   parents(A, Ego), generation[aux]12gs(B, A), children(Alter, B).
;; 0
%generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 7
%generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 8
%generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 9
%generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


grandchild[aux]12(Alter, Ego) :-  children(A, Ego), child(Alter, A).
                              |   children(A, Ego), child(B, A), spouse(Alter, B).
                              |  [ext],  generation[aux]12gs(A, Ego), children(B, A), child(Alter, B).
                              |  [ext],  generation[aux]12gs(A, Ego), children(B, A), child(C, B), spouse(Alter, C).
;; 0
%grandchild[aux]12:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), child(Alter, A).
;; 1
%grandchild[aux]12:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), child(Alter, A).
;; 2
%grandchild[aux]12:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 son(A, Ego), child(B, A), spouse(Alter, B).
;; 3
%grandchild[aux]12:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 daughter(A, Ego), child(B, A), spouse(Alter, B).
;; 4
%grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D).
;; 5
%grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D).
;; 6
%grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D).
;; 7
%grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D).
;; 8
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 9
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 10
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 11
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 12
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 13
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 14
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 15
%grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 16
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F).
;; 17
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F).
;; 18
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F).
;; 19
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 20
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F).
;; 21
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F).
;; 22
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F).
;; 23
%grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F).
;; 24
%grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(Alter, E).
;; 25
%grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(Alter, E).
;; 26
%grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(Alter, E).
;; 27
%grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(Alter, E).
;; 28
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 29
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 30
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 31
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 32
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 33
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 34
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 35
%grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 36
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 37
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 38
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 39
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 40
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 41
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G).
;; 42
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G).
;; 43
%grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G).


grandparent[aux]12(Alter, Ego) :-  parents(A, Ego), parent(Alter, A).
                               |   spice(A, Ego), parents(B, A), parent(Alter, B).
                               |  [ext],  parents(A, Ego), parents(B, A), generation[aux]12(Alter, B).
                               |  [ext],  spice(A, Ego), parents(B, A), parents(C, B), generation[aux]12(Alter, C).
;; 0
%grandparent[aux]12:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 1
%grandparent[aux]12:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 2
%grandparent[aux]12:1, spice:0, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), mother(B, A), parent(Alter, B).
;; 3
%grandparent[aux]12:1, spice:0, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 husband(A, Ego), father(B, A), parent(Alter, B).
;; 4
%grandparent[aux]12:1, spice:1, parents:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), mother(B, A), parent(Alter, B).
;; 5
%grandparent[aux]12:1, spice:1, parents:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 wife(A, Ego), father(B, A), parent(Alter, B).
;; 6
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 7
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 8
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 9
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 10
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 11
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 12
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 13
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 14
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 15
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 16
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 17
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 18
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 19
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 20
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 21
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 22
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 23
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 24
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 25
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 26
%grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 27
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 28
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 29
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 30
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 31
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 32
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 33
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 34
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 35
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 36
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 37
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 38
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 39
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 40
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 41
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 42
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 43
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 44
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 45
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 46
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 47
%grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 48
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 49
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 50
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 51
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 52
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 53
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 54
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 55
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 56
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 57
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 58
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 59
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 60
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 61
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 62
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 63
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 64
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 65
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 66
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 67
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 68
%grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 69
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 70
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 71
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 72
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 73
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 74
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 75
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 76
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 77
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 78
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 79
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 80
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 81
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 82
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 83
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 84
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 85
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 86
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 87
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 88
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 89
%grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 90
%grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 91
%grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 92
%grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 93
%grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 94
%grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 95
%grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 96
%grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 97
%grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 98
%grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 99
%grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 100
%grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 101
%grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 102
%grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 103
%grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 104
%grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 105
%grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 106
%grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 107
%grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 108
%grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 109
%grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 110
%grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 111
%grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 112
%grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 113
%grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 114
%grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 115
%grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 116
%grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 117
%grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 118
%grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 119
%grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 120
%grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 121
%grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 122
%grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 123
%grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 124
%grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 125
%grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)).
;; 126
%grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 127
%grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).
;; 128
%grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G).
;; 129
%grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G).


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


kolunti(Alter, Ego) :-  cross_cousin[aux]12(Alter, Ego), younger(Alter, Ego), female(Alter).
                    |   spice(A, Ego), sibling(Alter, A), younger(Alter, A), female(Alter).
                    |  [ext],  spouse(A, Ego), parallel_cousin[aux]12(Alter, A), younger(Alter, A), female(Alter).
                    |  [ext],  brother(A, Ego), wife(Alter, A), younger(A, Ego).
                    |  [ext],  parallel_cousin[aux]12(A, Ego), wife(Alter, A), younger(A, Ego).
{"BroWi_FaBroSoWi_FaFaBroDaDa_FaFaBroSoSoWi_FaFaSisDaSoWi_FaFaSisSoDa_FaMoBroDaSoWi_FaMoBroSoDa_FaMoSisDaDa_FaMoSisSoSoWi_FaSisDa_HuFaBroDa_HuFaFaSisDaDa_HuFaMoBroDaDa_HuMoFaSisSoDa_HuMoMoBroSoDa_HuMoSisDa_HuSis_MoBroDa_MoFaBroDaSoWi_MoFaBroSoDa_MoFaSisDaDa_MoFaSisSoSoWi_MoMoBroDaDa_MoMoBroSoSoWi_MoMoSisDaSoWi_MoMoSisSoDa_MoSisSoWi_WiFaBroDa_WiFaFaSisDaDa_WiFaMoBroDaDa_WiMoFaSisSoDa_WiMoMoBroSoDa_WiMoSisDa_WiSis"}
;; 0
%kolunti:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), female(Alter).
;; 1
%kolunti:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 2
%kolunti:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 3
%kolunti:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 4
%kolunti:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 5
%kolunti:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), female(Alter).
;; 6
%kolunti:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 7
%kolunti:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 8
%kolunti:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 9
%kolunti:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 10
%kolunti:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), female(Alter).
;; 11
%kolunti:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 12
%kolunti:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 13
%kolunti:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 14
%kolunti:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 15
%kolunti:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), female(Alter).
;; 16
%kolunti:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 17
%kolunti:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), female(Alter).
;; 18
%kolunti:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 19
%kolunti:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), female(Alter).
;; 20
%kolunti:1, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), female(Alter).
;; 21
%kolunti:1, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), female(Alter).
;; 22
%kolunti:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), female(Alter).
;; 23
%kolunti:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 24
%kolunti:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 25
%kolunti:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), female(Alter).
;; 26
%kolunti:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 27
%kolunti:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 28
%kolunti:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), female(Alter).
;; 29
%kolunti:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 30
%kolunti:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 31
%kolunti:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), female(Alter).
;; 32
%kolunti:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 33
%kolunti:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), female(Alter).
;; 34
%kolunti:3, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C), younger(C, Ego).
;; 35
%kolunti:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), younger(F, Ego).
;; 36
%kolunti:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 37
%kolunti:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 38
%kolunti:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 39
%kolunti:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 40
%kolunti:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), younger(F, Ego).
;; 41
%kolunti:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 42
%kolunti:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 43
%kolunti:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 44
%kolunti:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 45
%kolunti:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), younger(F, Ego).
;; 46
%kolunti:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 47
%kolunti:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 48
%kolunti:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 49
%kolunti:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 50
%kolunti:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), younger(F, Ego).
;; 51
%kolunti:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 52
%kolunti:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), younger(I, Ego).
;; 53
%kolunti:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).
;; 54
%kolunti:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), younger(K, Ego).


maccinan(Alter, Ego) :-  cross_cousin[aux]12(Alter, Ego), younger(Alter, Ego), male(Alter).
                     |   spice(A, Ego), sibling(Alter, A), younger(Alter, A), male(Alter).
                     |  [ext],  spouse(A, Ego), parallel_cousin[aux]12(Alter, A), younger(Alter, A), male(Alter).
                     |  [ext],  sister(A, Ego), husband(Alter, A), younger(A, Ego).
                     |  [ext],  parallel_cousin[aux]12(A, Ego), husband(Alter, A), younger(A, Ego).
{"FaBroDaHu_FaFaBroDaSo_FaFaBroSoDaHu_FaFaSisDaDaHu_FaFaSisSoSo_FaMoBroDaDaHu_FaMoBroSoSo_FaMoSisDaSo_FaMoSisSoDaHu_FaSisSo_HuBro_HuFaBroSo_HuFaFaSisDaSo_HuFaMoBroDaSo_HuMoFaSisSoSo_HuMoMoBroSoSo_HuMoSisSo_MoBroSo_MoFaBroDaDaHu_MoFaBroSoSo_MoFaSisDaSo_MoFaSisSoDaHu_MoMoBroDaSo_MoMoBroSoDaHu_MoMoSisDaDaHu_MoMoSisSoSo_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaSisDaSo_WiFaMoBroDaSo_WiMoFaSisSoSo_WiMoMoBroSoSo_WiMoSisSo"}
;; 0
%maccinan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), male(Alter).
;; 1
%maccinan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 2
%maccinan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 3
%maccinan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 4
%maccinan:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 5
%maccinan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), male(Alter).
;; 6
%maccinan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 7
%maccinan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 8
%maccinan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 9
%maccinan:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 10
%maccinan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), male(Alter).
;; 11
%maccinan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 12
%maccinan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 13
%maccinan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 14
%maccinan:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 15
%maccinan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), younger(Alter, Ego), male(Alter).
;; 16
%maccinan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 17
%maccinan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), younger(Alter, Ego), male(Alter).
;; 18
%maccinan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 19
%maccinan:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), younger(Alter, Ego), male(Alter).
;; 20
%maccinan:1, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), male(Alter).
;; 21
%maccinan:1, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), younger(Alter, A), male(Alter).
;; 22
%maccinan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), male(Alter).
;; 23
%maccinan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 24
%maccinan:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 25
%maccinan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), male(Alter).
;; 26
%maccinan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 27
%maccinan:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 28
%maccinan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), male(Alter).
;; 29
%maccinan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 30
%maccinan:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 31
%maccinan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), younger(Alter, A), male(Alter).
;; 32
%maccinan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 33
%maccinan:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), younger(Alter, A), male(Alter).
;; 34
%maccinan:3, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C), younger(C, Ego).
;; 35
%maccinan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), younger(F, Ego).
;; 36
%maccinan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 37
%maccinan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 38
%maccinan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 39
%maccinan:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 40
%maccinan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), younger(F, Ego).
;; 41
%maccinan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 42
%maccinan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 43
%maccinan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 44
%maccinan:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 45
%maccinan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), younger(F, Ego).
;; 46
%maccinan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 47
%maccinan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 48
%maccinan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 49
%maccinan:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 50
%maccinan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F), younger(F, Ego).
;; 51
%maccinan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 52
%maccinan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I), younger(I, Ego).
;; 53
%maccinan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).
;; 54
%maccinan:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), husband(Alter, K), younger(K, Ego).


makal(Alter, Ego) :-  daughter(Alter, Ego).
                  |  [ext],  even_gen[aux]12(A, Ego), daughter(Alter, A).
                  |  [ext],  spice(A, Ego), even_gen[aux]12(B, A), daughter(Alter, B).
                  |  [ext],  even_gen[aux]12(A, Ego), son(B, A), wife(Alter, B).
{"BroDa_BroSoWi_Da_FaBroDaDa_FaBroDaSoWi_FaBroSoDa_FaBroSoSoWi_FaFaBroDaDaDa_FaFaBroDaDaSoWi_FaFaBroDaSoDa_FaFaBroDaSoSoWi_FaFaSisDaDaDa_FaFaSisDaDaSoWi_FaFaSisDaSoDa_FaFaSisDaSoSoWi_FaFaSisSoDaDa_FaFaSisSoDaSoWi_FaFaSisSoSoDa_FaFaSisSoSoSoWi_FaMoBroDaDaDa_FaMoBroDaDaSoWi_FaMoBroDaSoDa_FaMoBroDaSoSoWi_FaMoBroSoDaDa_FaMoBroSoDaSoWi_FaMoBroSoSoDa_FaMoBroSoSoSoWi_FaMoSisDaDaDa_FaMoSisDaDaSoWi_FaMoSisDaSoDa_FaMoSisDaSoSoWi_FaSisDaDa_FaSisDaSoWi_FaSisSoDa_FaSisSoSoWi_HuBroDa_HuFaBroSoDa_HuFaSisDaDa_HuMoBroDaDa_HuMoSisSoDa_MoBroDaDa_MoBroDaSoWi_MoBroSoDa_MoBroSoSoWi_MoFaBroSoDaDa_MoFaBroSoDaSoWi_MoFaBroSoSoDa_MoFaBroSoSoSoWi_MoFaSisDaDaDa_MoFaSisDaDaSoWi_MoFaSisDaSoDa_MoFaSisDaSoSoWi_MoFaSisSoDaDa_MoFaSisSoDaSoWi_MoFaSisSoSoDa_MoFaSisSoSoSoWi_MoMoBroDaDaDa_MoMoBroDaDaSoWi_MoMoBroDaSoDa_MoMoBroDaSoSoWi_MoMoBroSoDaDa_MoMoBroSoDaSoWi_MoMoBroSoSoDa_MoMoBroSoSoSoWi_MoMoSisSoDaDa_MoMoSisSoDaSoWi_MoMoSisSoSoDa_MoMoSisSoSoSoWi_MoSisDaDa_MoSisDaSoWi_MoSisSoDa_MoSisSoSoWi_SisDa_SisSoWi_WiFaBroDaDa_WiFaSisSoDa_WiMoBroSoDa_WiMoSisDaDa_WiSisDa"}
;; 0
%makal:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%makal:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(Alter, C).
;; 2
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 3
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 4
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 5
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 6
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 7
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 8
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 9
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 10
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 11
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 12
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 13
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 14
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 15
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 16
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 17
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 18
%makal:2, spice:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), daughter(Alter, D).
;; 19
%makal:2, spice:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), daughter(Alter, G).
;; 20
%makal:2, spice:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), daughter(Alter, G).
;; 21
%makal:2, spice:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), daughter(Alter, H).
;; 22
%makal:2, spice:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), daughter(Alter, H).
;; 23
%makal:2, spice:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), daughter(Alter, D).
;; 24
%makal:2, spice:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), daughter(Alter, G).
;; 25
%makal:2, spice:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), daughter(Alter, G).
;; 26
%makal:2, spice:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), daughter(Alter, H).
;; 27
%makal:2, spice:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), daughter(Alter, H).
;; 28
%makal:3, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(E, C), wife(Alter, E).
;; 29
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(H, F), wife(Alter, H).
;; 30
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 31
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 32
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(H, F), wife(Alter, H).
;; 33
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 34
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 35
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(J, G), wife(Alter, J).
;; 36
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 37
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 38
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 39
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 40
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(J, G), wife(Alter, J).
;; 41
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 42
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 43
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 44
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 45
%makal:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(Alter, C).
;; 46
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 47
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 48
%makal:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 49
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 50
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 51
%makal:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(Alter, K).
;; 52
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 53
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 54
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 55
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 56
%makal:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 57
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 58
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 59
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 60
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 61
%makal:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(Alter, J).
;; 62
%makal:3, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(E, C), wife(Alter, E).
;; 63
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(H, F), wife(Alter, H).
;; 64
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 65
%makal:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 66
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(H, F), wife(Alter, H).
;; 67
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 68
%makal:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(M, K), wife(Alter, M).
;; 69
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(J, G), wife(Alter, J).
;; 70
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 71
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 72
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 73
%makal:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 74
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(J, G), wife(Alter, J).
;; 75
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 76
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 77
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).
;; 78
%makal:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(M, J), wife(Alter, M).


makan(Alter, Ego) :-  son(Alter, Ego).
                  |  [ext],  even_gen[aux]12(A, Ego), son(Alter, A).
                  |  [ext],  spice(A, Ego), even_gen[aux]12(B, A), son(Alter, B).
                  |  [ext],  even_gen[aux]12(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_BroSo_FaBroDaDaHu_FaBroDaSo_FaBroSoDaHu_FaBroSoSo_FaFaBroDaDaDaHu_FaFaBroDaDaSo_FaFaBroDaSoDaHu_FaFaBroDaSoSo_FaFaSisDaDaDaHu_FaFaSisDaDaSo_FaFaSisDaSoDaHu_FaFaSisDaSoSo_FaFaSisSoDaDaHu_FaFaSisSoDaSo_FaFaSisSoSoDaHu_FaFaSisSoSoSo_FaMoBroDaDaDaHu_FaMoBroDaDaSo_FaMoBroDaSoDaHu_FaMoBroDaSoSo_FaMoBroSoDaDaHu_FaMoBroSoDaSo_FaMoBroSoSoDaHu_FaMoBroSoSoSo_FaMoSisDaDaDaHu_FaMoSisDaDaSo_FaMoSisDaSoDaHu_FaMoSisDaSoSo_FaSisDaDaHu_FaSisDaSo_FaSisSoDaHu_FaSisSoSo_HuBroSo_HuFaBroSoSo_HuFaSisDaSo_HuMoBroDaSo_HuMoSisSoSo_MoBroDaDaHu_MoBroDaSo_MoBroSoDaHu_MoBroSoSo_MoFaBroSoDaDaHu_MoFaBroSoDaSo_MoFaBroSoSoDaHu_MoFaBroSoSoSo_MoFaSisDaDaDaHu_MoFaSisDaDaSo_MoFaSisDaSoDaHu_MoFaSisDaSoSo_MoFaSisSoDaDaHu_MoFaSisSoDaSo_MoFaSisSoSoDaHu_MoFaSisSoSoSo_MoMoBroDaDaDaHu_MoMoBroDaDaSo_MoMoBroDaSoDaHu_MoMoBroDaSoSo_MoMoBroSoDaDaHu_MoMoBroSoDaSo_MoMoBroSoSoDaHu_MoMoBroSoSoSo_MoMoSisSoDaDaHu_MoMoSisSoDaSo_MoMoSisSoSoDaHu_MoMoSisSoSoSo_MoSisDaDaHu_MoSisDaSo_MoSisSoDaHu_MoSisSoSo_SisDaHu_SisSo_So_WiFaBroDaSo_WiFaSisSoSo_WiMoBroSoSo_WiMoSisDaSo_WiSisSo"}
;; 0
%makan:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%makan:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(Alter, C).
;; 2
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 3
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 4
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 5
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 6
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 7
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 8
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 9
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 10
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 11
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 12
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 13
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 14
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 15
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 16
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 17
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 18
%makan:2, spice:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), son(Alter, D).
;; 19
%makan:2, spice:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), son(Alter, G).
;; 20
%makan:2, spice:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroSoSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), son(Alter, G).
;; 21
%makan:2, spice:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroDaSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), son(Alter, H).
;; 22
%makan:2, spice:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), son(Alter, H).
;; 23
%makan:2, spice:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), son(Alter, D).
;; 24
%makan:2, spice:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisDaSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), son(Alter, G).
;; 25
%makan:2, spice:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), son(Alter, G).
;; 26
%makan:2, spice:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), son(Alter, H).
;; 27
%makan:2, spice:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisSoSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), son(Alter, H).
;; 28
%makan:3, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(E, C), husband(Alter, E).
;; 29
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(H, F), husband(Alter, H).
;; 30
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 31
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 32
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(H, F), husband(Alter, H).
;; 33
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 34
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 35
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(J, G), husband(Alter, J).
;; 36
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 37
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 38
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 39
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 40
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(J, G), husband(Alter, J).
;; 41
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 42
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 43
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 44
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 45
%makan:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(Alter, C).
;; 46
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 47
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 48
%makan:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 49
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 50
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 51
%makan:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), son(Alter, K).
;; 52
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 53
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 54
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 55
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 56
%makan:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 57
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 58
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 59
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 60
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 61
%makan:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), son(Alter, J).
;; 62
%makan:3, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(E, C), husband(Alter, E).
;; 63
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(H, F), husband(Alter, H).
;; 64
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 65
%makan:3, even_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 66
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(H, F), husband(Alter, H).
;; 67
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 68
%makan:3, even_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(L, K), daughter(M, K), husband(Alter, M).
;; 69
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(J, G), husband(Alter, J).
;; 70
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 71
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 72
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 73
%makan:3, even_gen[aux]12:2, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaSoDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 74
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(I, G), not(equal(H, I)), daughter(J, G), husband(Alter, J).
;; 75
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 76
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 77
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).
;; 78
%makan:3, even_gen[aux]12:2, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoSoDaHu}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(I, A), child(J, C), gender(K, Ego), gender(L, J), not(equal(K, L)), daughter(M, J), husband(Alter, M).


maman(Alter, Ego) :-  cross_up1[aux]12(Alter, Ego), male(Alter).
                  |   spice(A, Ego), father(Alter, A).
{"FaFaBroDaHu_FaFaSisSo_FaMoBroSo_FaMoSisDaHu_FaSisHu_HuFa_HuFaBro_HuFaFaBroSo_HuFaMoSisSo_HuMoFaSisSo_HuMoMoBroSo_MoBro_MoFaBroSo_MoFaSisDaHu_MoMoBroDaHu_MoMoSisSo_WiFa_WiFaBro_WiFaFaBroSo_WiFaMoSisSo_WiMoFaSisSo_WiMoMoBroSo"}
;; 0
%maman:0, cross_up1[aux]12:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)), male(Alter).
;; 1
%maman:0, cross_up1[aux]12:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)), male(Alter).
;; 2
%maman:0, cross_up1[aux]12:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)), male(Alter).
;; 3
%maman:0, cross_up1[aux]12:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter), male(Alter).
;; 4
%maman:0, cross_up1[aux]12:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(H, Alter), male(Alter).
;; 5
%maman:0, cross_up1[aux]12:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), spouse(Alter, D), male(Alter).
;; 6
%maman:0, cross_up1[aux]12:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G), male(Alter).
;; 7
%maman:0, cross_up1[aux]12:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G), male(Alter).
;; 8
%maman:0, cross_up1[aux]12:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H), male(Alter).
;; 9
%maman:0, cross_up1[aux]12:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), spouse(Alter, H), male(Alter).
;; 10
%maman:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter), male(Alter).
;; 11
%maman:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), male(Alter).
;; 12
%maman:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), male(Alter).
;; 13
%maman:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoBroSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), male(Alter).
;; 14
%maman:0, cross_up1[aux]12:2, spice:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), male(Alter).
;; 15
%maman:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter), male(Alter).
;; 16
%maman:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), male(Alter).
;; 17
%maman:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter), male(Alter).
;; 18
%maman:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), male(Alter).
;; 19
%maman:0, cross_up1[aux]12:2, spice:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(J, Alter), not(equal(I, J)), male(Alter).
;; 20
%maman:1, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 21
%maman:1, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).


mappillai(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%mappillai:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


marumakal(Alter, Ego) :-  odd_gen[aux]12(A, Ego), daughter(Alter, A).
                      |   spice(A, Ego), odd_gen[aux]12(B, A), daughter(Alter, B).
                      |   odd_gen[aux]12(A, Ego), son(B, A), wife(Alter, B).
                      |   son(A, Ego), wife(Alter, A).
{"BroDa_BroSoWi_FaBroDaDa_FaBroDaSoWi_FaBroSoDa_FaBroSoSoWi_FaFaBroDaDaDa_FaFaBroDaDaSoWi_FaFaBroDaSoDa_FaFaBroDaSoSoWi_FaFaBroSoDaDa_FaFaBroSoDaSoWi_FaFaBroSoSoDa_FaFaBroSoSoSoWi_FaFaSisDaDaDa_FaFaSisDaDaSoWi_FaFaSisDaSoDa_FaFaSisDaSoSoWi_FaMoBroDaDaDa_FaMoBroDaDaSoWi_FaMoBroDaSoDa_FaMoBroDaSoSoWi_FaMoSisDaDaDa_FaMoSisDaDaSoWi_FaMoSisDaSoDa_FaMoSisDaSoSoWi_FaMoSisSoDaDa_FaMoSisSoDaSoWi_FaMoSisSoSoDa_FaMoSisSoSoSoWi_FaSisDaDa_FaSisDaSoWi_FaSisSoDa_FaSisSoSoWi_HuFaBroDaDa_HuFaSisSoDa_HuMoBroSoDa_HuMoSisDaDa_HuSisDa_MoBroDaDa_MoBroDaSoWi_MoBroSoDa_MoBroSoSoWi_MoFaBroDaDaDa_MoFaBroDaDaSoWi_MoFaBroDaSoDa_MoFaBroDaSoSoWi_MoFaBroSoDaDa_MoFaBroSoDaSoWi_MoFaBroSoSoDa_MoFaBroSoSoSoWi_MoFaSisSoDaDa_MoFaSisSoDaSoWi_MoFaSisSoSoDa_MoFaSisSoSoSoWi_MoMoBroSoDaDa_MoMoBroSoDaSoWi_MoMoBroSoSoDa_MoMoBroSoSoSoWi_MoMoSisDaDaDa_MoMoSisDaDaSoWi_MoMoSisDaSoDa_MoMoSisDaSoSoWi_MoMoSisSoDaDa_MoMoSisSoDaSoWi_MoMoSisSoSoDa_MoMoSisSoSoSoWi_MoSisDaDa_MoSisDaSoWi_MoSisSoDa_MoSisSoSoWi_SisDa_SisSoWi_SoWi_WiBroDa_WiFaBroSoDa_WiFaSisDaDa_WiMoBroDaDa_WiMoSisSoDa"}
;; 0
%marumakal:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(Alter, C).
;; 1
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 2
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 3
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 4
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 5
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 6
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 7
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 8
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 9
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 10
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 11
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 12
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 13
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 14
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 15
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 16
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 17
%marumakal:1, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), daughter(Alter, D).
;; 18
%marumakal:1, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaDa}  
 husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 19
%marumakal:1, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaDa}  
 husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 20
%marumakal:1, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoDa}  
 husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), daughter(Alter, H).
;; 21
%marumakal:1, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoDa}  
 husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), daughter(Alter, H).
;; 22
%marumakal:1, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), daughter(Alter, D).
;; 23
%marumakal:1, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoDa}  
 wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 24
%marumakal:1, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoDa}  
 wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), daughter(Alter, G).
;; 25
%marumakal:1, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaDa}  
 wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), daughter(Alter, H).
;; 26
%marumakal:1, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaDa}  
 wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), daughter(Alter, H).
;; 27
%marumakal:2, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(F, C), wife(Alter, F).
;; 28
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(I, F), wife(Alter, I).
;; 29
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 30
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 31
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaSoWi}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 32
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaSoWi}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 33
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(I, F), wife(Alter, I).
;; 34
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 35
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 36
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaSoWi}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 37
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaSoWi}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 38
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(I, G), wife(Alter, I).
;; 39
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoSoWi}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 40
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoSoWi}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 41
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoSoWi}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(I, G), wife(Alter, I).
;; 42
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoSoWi}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 43
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoSoWi}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 44
%marumakal:3%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 45
%marumakal:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(Alter, C).
;; 46
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 47
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 48
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 49
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 50
%marumakal:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 51
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 52
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 53
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 54
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 55
%marumakal:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(Alter, K).
;; 56
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 57
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 58
%marumakal:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 59
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(Alter, G).
;; 60
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 61
%marumakal:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(Alter, J).
;; 62
%marumakal:2, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(F, C), wife(Alter, F).
;; 63
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(I, F), wife(Alter, I).
;; 64
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 65
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoSoWi}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 66
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoSoWi}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 67
%marumakal:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoSoWi}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 68
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoSoWi}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(I, F), wife(Alter, I).
;; 69
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoSoWi}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 70
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoSoWi}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(L, I), wife(Alter, L).
;; 71
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoSoWi}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 72
%marumakal:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoSoWi}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(N, K), wife(Alter, N).
;; 73
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(I, G), wife(Alter, I).
;; 74
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaSoWi}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 75
%marumakal:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaSoWi}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 76
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(I, G), wife(Alter, I).
;; 77
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).
;; 78
%marumakal:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(L, J), wife(Alter, L).


marumakan(Alter, Ego) :-  odd_gen[aux]12(A, Ego), son(Alter, A).
                      |   spice(A, Ego), odd_gen[aux]12(B, A), son(Alter, B).
                      |   odd_gen[aux]12(A, Ego), daughter(B, A), husband(Alter, B).
                      |   daughter(A, Ego), husband(Alter, A).
{"BroDaHu_BroSo_DaHu_FaBroDaDaHu_FaBroDaSo_FaBroSoDaHu_FaBroSoSo_FaFaBroDaDaDaHu_FaFaBroDaDaSo_FaFaBroDaSoDaHu_FaFaBroDaSoSo_FaFaBroSoDaDaHu_FaFaBroSoDaSo_FaFaBroSoSoDaHu_FaFaBroSoSoSo_FaFaSisDaDaDaHu_FaFaSisDaDaSo_FaFaSisDaSoDaHu_FaFaSisDaSoSo_FaMoBroDaDaDaHu_FaMoBroDaDaSo_FaMoBroDaSoDaHu_FaMoBroDaSoSo_FaMoSisDaDaDaHu_FaMoSisDaDaSo_FaMoSisDaSoDaHu_FaMoSisDaSoSo_FaMoSisSoDaDaHu_FaMoSisSoDaSo_FaMoSisSoSoDaHu_FaMoSisSoSoSo_FaSisDaDaHu_FaSisDaSo_FaSisSoDaHu_FaSisSoSo_HuFaBroDaSo_HuFaSisSoSo_HuMoBroSoSo_HuMoSisDaSo_HuSisSo_MoBroDaDaHu_MoBroDaSo_MoBroSoDaHu_MoBroSoSo_MoFaBroDaDaDaHu_MoFaBroDaDaSo_MoFaBroDaSoDaHu_MoFaBroDaSoSo_MoFaBroSoDaDaHu_MoFaBroSoDaSo_MoFaBroSoSoDaHu_MoFaBroSoSoSo_MoFaSisSoDaDaHu_MoFaSisSoDaSo_MoFaSisSoSoDaHu_MoFaSisSoSoSo_MoMoBroSoDaDaHu_MoMoBroSoDaSo_MoMoBroSoSoDaHu_MoMoBroSoSoSo_MoMoSisDaDaDaHu_MoMoSisDaDaSo_MoMoSisDaSoDaHu_MoMoSisDaSoSo_MoMoSisSoDaDaHu_MoMoSisSoDaSo_MoMoSisSoSoDaHu_MoMoSisSoSoSo_MoSisDaDaHu_MoSisDaSo_MoSisSoDaHu_MoSisSoSo_SisDaHu_SisSo_WiBroSo_WiFaBroSoSo_WiFaSisDaSo_WiMoBroDaSo_WiMoSisSoSo"}
;; 0
%marumakan:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(Alter, C).
;; 1
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 2
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 3
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 4
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 5
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 6
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 7
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 8
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 9
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 10
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 11
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(Alter, G).
;; 12
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 13
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 14
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(Alter, G).
;; 15
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 16
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 17
%marumakan:1, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), son(Alter, D).
;; 18
%marumakan:1, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoSisDaSo}  
 husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 19
%marumakan:1, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaBroDaSo}  
 husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 20
%marumakan:1, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuMoBroSoSo}  
 husband(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), son(Alter, H).
;; 21
%marumakan:1, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {HuFaSisSoSo}  
 husband(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), son(Alter, H).
;; 22
%marumakan:1, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), son(Alter, D).
;; 23
%marumakan:1, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoSisSoSo}  
 wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 24
%marumakan:1, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaBroSoSo}  
 wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), son(Alter, G).
;; 25
%marumakan:1, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiMoBroDaSo}  
 wife(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), son(Alter, H).
;; 26
%marumakan:1, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {WiFaSisDaSo}  
 wife(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), son(Alter, H).
;; 27
%marumakan:2, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(F, C), husband(Alter, F).
;; 28
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(I, F), husband(Alter, I).
;; 29
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 30
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 31
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 32
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 33
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(I, F), husband(Alter, I).
;; 34
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 35
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 36
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 37
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 38
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(I, G), husband(Alter, I).
;; 39
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoSoDaHu}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 40
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoSoDaHu}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 41
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisSoDaHu}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(I, G), husband(Alter, I).
;; 42
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaSoDaHu}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 43
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaSoDaHu}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 44
%marumakan:3%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 45
%marumakan:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(Alter, C).
;; 46
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 47
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 48
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 49
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 50
%marumakan:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 51
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 52
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 53
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 54
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 55
%marumakan:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), son(Alter, K).
;; 56
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(Alter, G).
;; 57
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 58
%marumakan:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 59
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), son(Alter, G).
;; 60
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 61
%marumakan:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), son(Alter, J).
;; 62
%marumakan:2, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(F, C), husband(Alter, F).
;; 63
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(I, F), husband(Alter, I).
;; 64
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 65
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaSoDaHu}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 66
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoSoDaHu}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 67
%marumakan:2, odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoSoDaHu}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 68
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroSoDaHu}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(I, F), husband(Alter, I).
;; 69
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoSoDaHu}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 70
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoSoDaHu}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(L, I), husband(Alter, L).
;; 71
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaSoDaHu}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 72
%marumakan:2, odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaSoDaHu}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(K, C), gender(L, Ego), gender(M, K), not(equal(L, M)), daughter(N, K), husband(Alter, N).
;; 73
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(I, G), husband(Alter, I).
;; 74
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 75
%marumakan:2, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 76
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(G, C), gender(H, Ego), gender(H, G), daughter(I, G), husband(Alter, I).
;; 77
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).
;; 78
%marumakan:2, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(J, C), gender(K, Ego), gender(K, J), daughter(L, J), husband(Alter, L).


mayni(Alter, Ego) :-  cross_cousin[aux]12(Alter, Ego), elder(Alter, Ego), female(Alter).
                  |   spice(A, Ego), sibling(Alter, A), elder(Alter, A), female(Alter).
                  |  [ext],  spouse(A, Ego), parallel_cousin[aux]12(Alter, A), elder(Alter, A), female(Alter).
                  |  [ext],  brother(A, Ego), wife(Alter, A), elder(A, Ego).
                  |  [ext],  parallel_cousin[aux]12(A, Ego), wife(Alter, A), elder(A, Ego).
{"BroWi_FaBroSoWi_FaFaBroDaDa_FaFaBroSoSoWi_FaFaSisDaSoWi_FaFaSisSoDa_FaMoBroDaSoWi_FaMoBroSoDa_FaMoSisDaDa_FaMoSisSoSoWi_FaSisDa_HuFaBroDa_HuFaFaSisDaDa_HuFaMoBroDaDa_HuMoFaSisSoDa_HuMoMoBroSoDa_HuMoSisDa_HuSis_MoBroDa_MoFaBroDaSoWi_MoFaBroSoDa_MoFaSisDaDa_MoFaSisSoSoWi_MoMoBroDaDa_MoMoBroSoSoWi_MoMoSisDaSoWi_MoMoSisSoDa_MoSisSoWi_WiFaBroDa_WiFaFaSisDaDa_WiFaMoBroDaDa_WiMoFaSisSoDa_WiMoMoBroSoDa_WiMoSisDa_WiSis"}
;; 0
%mayni:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), female(Alter).
;; 1
%mayni:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 2
%mayni:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 3
%mayni:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 4
%mayni:0, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 5
%mayni:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), female(Alter).
;; 6
%mayni:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 7
%mayni:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 8
%mayni:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 9
%mayni:0, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 10
%mayni:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), female(Alter).
;; 11
%mayni:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 12
%mayni:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 13
%mayni:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 14
%mayni:0, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 15
%mayni:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), elder(Alter, Ego), female(Alter).
;; 16
%mayni:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 17
%mayni:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), elder(Alter, Ego), female(Alter).
;; 18
%mayni:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 19
%mayni:0, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(I, H), child(Alter, H), elder(Alter, Ego), female(Alter).
;; 20
%mayni:1, spice:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), elder(Alter, A), female(Alter).
;; 21
%mayni:1, spice:1, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), elder(Alter, A), female(Alter).
;; 22
%mayni:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), female(Alter).
;; 23
%mayni:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroSoDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 24
%mayni:2, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisSoDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 25
%mayni:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), female(Alter).
;; 26
%mayni:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroDaDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 27
%mayni:2, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisDaDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 28
%mayni:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), female(Alter).
;; 29
%mayni:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroSoDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 30
%mayni:2, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisSoDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 31
%mayni:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), elder(Alter, A), female(Alter).
;; 32
%mayni:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroDaDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 33
%mayni:2, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisDaDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(I, E), gender(J, B), gender(K, I), not(equal(J, K)), child(Alter, I), elder(Alter, A), female(Alter).
;; 34
%mayni:3, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C), elder(C, Ego).
;; 35
%mayni:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), elder(F, Ego).
;; 36
%mayni:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 37
%mayni:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 38
%mayni:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 39
%mayni:4, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 40
%mayni:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), elder(F, Ego).
;; 41
%mayni:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 42
%mayni:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 43
%mayni:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 44
%mayni:4, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 45
%mayni:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), elder(F, Ego).
;; 46
%mayni:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 47
%mayni:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 48
%mayni:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroSoSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 49
%mayni:4, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisSoSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 50
%mayni:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), wife(Alter, F), elder(F, Ego).
;; 51
%mayni:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 52
%mayni:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), wife(Alter, I), elder(I, Ego).
;; 53
%mayni:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroDaSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).
;; 54
%mayni:4, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisDaSoWi}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(K, H), wife(Alter, K), elder(K, Ego).


odd_gen[aux]12(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(B, Alter), not(equal(A, B)).
                           |   parents(A, Ego), even_gen[aux]12(A, B), child(Alter, B), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
                           |   parents(A, Ego), odd_gen[aux]12(A, B), child(Alter, B), gender(C, Ego), gender(C, Alter).
;; 0
%odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 1
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 2
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 3
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 4
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 5
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 6
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 7
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 8
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 9
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 10
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 11
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(G, Alter).
;; 12
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 13
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 14
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(G, Alter).
;; 15
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 16
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 17
%odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 18
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 19
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 20
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 21
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 22
%odd_gen[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 23
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 24
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 25
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 26
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 27
%odd_gen[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(H, B), not(equal(G, H)), child(A, E), gender(I, C), gender(J, A), not(equal(I, J)), child(Alter, C), gender(K, Ego), gender(L, Alter), not(equal(K, L)).
;; 28
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(G, Alter).
;; 29
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 30
%odd_gen[aux]12:2, parents:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 31
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(F, A), not(equal(E, F)), child(Alter, C), gender(G, Ego), gender(G, Alter).
;; 32
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).
;; 33
%odd_gen[aux]12:2, parents:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(I, A), not(equal(H, I)), child(Alter, C), gender(J, Ego), gender(J, Alter).


para_up1[aux]12(Alter, Ego) :-  parent(A, Ego), even_gen[aux]12(Alter, A).
                            |  [ext],  parent(A, Ego), even_gen[aux]12(B, A), spouse(Alter, B).
                            |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]12(Alter, B).
;; 0
%para_up1[aux]12:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 1
%para_up1[aux]12:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter).
;; 2
%para_up1[aux]12:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter).
;; 3
%para_up1[aux]12:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)).
;; 4
%para_up1[aux]12:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)).
;; 5
%para_up1[aux]12:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), spouse(Alter, D).
;; 6
%para_up1[aux]12:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G).
;; 7
%para_up1[aux]12:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G).
;; 8
%para_up1[aux]12:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), spouse(Alter, H).
;; 9
%para_up1[aux]12:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), spouse(Alter, H).
;; 10
%para_up1[aux]12:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)).
;; 11
%para_up1[aux]12:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 12
%para_up1[aux]12:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 13
%para_up1[aux]12:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter).
;; 14
%para_up1[aux]12:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter).
;; 15
%para_up1[aux]12:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)).
;; 16
%para_up1[aux]12:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 17
%para_up1[aux]12:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 18
%para_up1[aux]12:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter).
;; 19
%para_up1[aux]12:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter).


para_up1[aux]12elder(Alter, Ego) :-  parent(A, Ego), even_gen[aux]12(Alter, A), elder(Alter, A).
                                 |  [ext],  parent(A, Ego), even_gen[aux]12(B, A), elder(B, A), spouse(Alter, B).
                                 |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]12(Alter, B), elder(Alter, B).
;; 0
%para_up1[aux]12elder:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A).
;; 1
%para_up1[aux]12elder:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 2
%para_up1[aux]12elder:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 3
%para_up1[aux]12elder:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A).
;; 4
%para_up1[aux]12elder:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A).
;; 5
%para_up1[aux]12elder:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), elder(D, A), spouse(Alter, D).
;; 6
%para_up1[aux]12elder:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G).
;; 7
%para_up1[aux]12elder:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G).
;; 8
%para_up1[aux]12elder:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H).
;; 9
%para_up1[aux]12elder:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H).
;; 10
%para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B).
;; 11
%para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 12
%para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 13
%para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B).
;; 14
%para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B).
;; 15
%para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B).
;; 16
%para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 17
%para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 18
%para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B).
;; 19
%para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B).


para_up1[aux]12younger(Alter, Ego) :-  parent(A, Ego), even_gen[aux]12(Alter, A), younger(Alter, A).
                                   |  [ext],  parent(A, Ego), even_gen[aux]12(B, A), younger(B, A), spouse(Alter, B).
                                   |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]12(Alter, B), younger(Alter, B).
;; 0
%para_up1[aux]12younger:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 1
%para_up1[aux]12younger:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A).
;; 2
%para_up1[aux]12younger:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A).
;; 3
%para_up1[aux]12younger:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A).
;; 4
%para_up1[aux]12younger:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), younger(Alter, A).
;; 5
%para_up1[aux]12younger:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), younger(D, A), spouse(Alter, D).
;; 6
%para_up1[aux]12younger:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G).
;; 7
%para_up1[aux]12younger:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G).
;; 8
%para_up1[aux]12younger:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H).
;; 9
%para_up1[aux]12younger:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), younger(H, A), spouse(Alter, H).
;; 10
%para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B).
;; 11
%para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 12
%para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 13
%para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B).
;; 14
%para_up1[aux]12younger:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B).
;; 15
%para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B).
;; 16
%para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 17
%para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 18
%para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B).
;; 19
%para_up1[aux]12younger:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), younger(Alter, B).


parallel_cousin[aux]12(Alter, Ego) :-  male(Ego), parents(A, Ego), even_gen[aux]12(B, A), child(Alter, B).
                                   |   female(Ego), parents(A, Ego), even_gen[aux]12(B, A), child(Alter, B).
;; 0
%parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 1
%parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 2
%parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 3
%parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 4
%parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 5
%parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 6
%parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 7
%parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 8
%parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 9
%parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 10
%parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 11
%parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 12
%parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 13
%parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 14
%parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 15
%parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 16
%parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 17
%parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 18
%parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).
;; 19
%parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H).


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


pattan(Alter, Ego) :-  grandparent[aux]12(Alter, Ego), male(Alter).
{"FaFa_FaFaBro_FaFaFaBroSo_FaFaFaSisSo_FaFaMoBroSo_FaFaMoSisSo_FaMoBro_FaMoFaBroSo_FaMoFaSisSo_FaMoMoBroSo_FaMoMoSisSo_HuFaFa_HuFaFaBro_HuFaFaFaBroSo_HuFaFaFaSisSo_HuFaFaMoBroSo_HuFaFaMoSisSo_HuFaMoBro_HuFaMoFaBroSo_HuFaMoFaSisSo_HuFaMoMoBroSo_HuFaMoMoSisSo_HuMoFa_HuMoFaBro_HuMoFaFaBroSo_HuMoFaFaSisSo_HuMoFaMoBroSo_HuMoFaMoSisSo_HuMoMoBro_HuMoMoFaBroSo_HuMoMoFaSisSo_HuMoMoMoBroSo_HuMoMoMoSisSo_MoFa_MoFaBro_MoFaFaBroSo_MoFaFaSisSo_MoFaMoBroSo_MoFaMoSisSo_MoMoBro_MoMoFaBroSo_MoMoFaSisSo_MoMoMoBroSo_MoMoMoSisSo_WiFaFa_WiFaFaBro_WiFaFaFaBroSo_WiFaFaFaSisSo_WiFaFaMoBroSo_WiFaFaMoSisSo_WiFaMoBro_WiFaMoFaBroSo_WiFaMoFaSisSo_WiFaMoMoBroSo_WiFaMoMoSisSo_WiMoFa_WiMoFaBro_WiMoFaFaBroSo_WiMoFaFaSisSo_WiMoFaMoBroSo_WiMoFaMoSisSo_WiMoMoBro_WiMoMoFaBroSo_WiMoMoFaSisSo_WiMoMoMoBroSo_WiMoMoMoSisSo"}
;; 0
%pattan:0, grandparent[aux]12:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), parent(Alter, A), male(Alter).
;; 1
%pattan:0, grandparent[aux]12:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), parent(Alter, A), male(Alter).
;; 2
%pattan:0, grandparent[aux]12:1, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoFa}  
 husband(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 3
%pattan:0, grandparent[aux]12:1, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaFa}  
 husband(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 4
%pattan:0, grandparent[aux]12:1, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoFa}  
 wife(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 5
%pattan:0, grandparent[aux]12:1, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaFa}  
 wife(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 6
%pattan:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 7
%pattan:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 8
%pattan:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 9
%pattan:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 10
%pattan:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 11
%pattan:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 12
%pattan:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 13
%pattan:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 14
%pattan:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 15
%pattan:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 16
%pattan:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 17
%pattan:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 18
%pattan:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 19
%pattan:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 20
%pattan:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 21
%pattan:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 22
%pattan:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 23
%pattan:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 24
%pattan:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 25
%pattan:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 26
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoBro}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 27
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 28
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 29
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 30
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaSisSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 31
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaBro}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 32
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 33
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 34
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 35
%pattan:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 36
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 37
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 38
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 39
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 40
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 41
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaBro}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 42
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoBroSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 43
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoSisSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 44
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaBroSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 45
%pattan:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaSisSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 46
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoBro}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 47
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 50
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 51
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaBro}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 52
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 53
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 54
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 55
%pattan:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 56
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 57
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 58
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 59
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 60
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 61
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaBro}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 62
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoBroSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 63
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoSisSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 64
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaBroSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 65
%pattan:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaSisSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).


patti(Alter, Ego) :-  grandparent[aux]12(Alter, Ego), female(Alter).
{"FaFaFaBroDa_FaFaFaSisDa_FaFaMoBroDa_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaSisDa_FaMoMoBroDa_FaMoMoSisDa_FaMoSis_HuFaFaFaBroDa_HuFaFaFaSisDa_HuFaFaMoBroDa_HuFaFaMoSisDa_HuFaFaSis_HuFaMo_HuFaMoFaBroDa_HuFaMoFaSisDa_HuFaMoMoBroDa_HuFaMoMoSisDa_HuFaMoSis_HuMoFaFaBroDa_HuMoFaFaSisDa_HuMoFaMoBroDa_HuMoFaMoSisDa_HuMoFaSis_HuMoMo_HuMoMoFaBroDa_HuMoMoFaSisDa_HuMoMoMoBroDa_HuMoMoMoSisDa_HuMoMoSis_MoFaFaBroDa_MoFaFaSisDa_MoFaMoBroDa_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaSisDa_MoMoMoBroDa_MoMoMoSisDa_MoMoSis_WiFaFaFaBroDa_WiFaFaFaSisDa_WiFaFaMoBroDa_WiFaFaMoSisDa_WiFaFaSis_WiFaMo_WiFaMoFaBroDa_WiFaMoFaSisDa_WiFaMoMoBroDa_WiFaMoMoSisDa_WiFaMoSis_WiMoFaFaBroDa_WiMoFaFaSisDa_WiMoFaMoBroDa_WiMoFaMoSisDa_WiMoFaSis_WiMoMo_WiMoMoFaBroDa_WiMoMoFaSisDa_WiMoMoMoBroDa_WiMoMoMoSisDa_WiMoMoSis"}
;; 0
%patti:0, grandparent[aux]12:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), parent(Alter, A), female(Alter).
;; 1
%patti:0, grandparent[aux]12:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), parent(Alter, A), female(Alter).
;; 2
%patti:0, grandparent[aux]12:1, spice:0, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {HuMoMo}  
 husband(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 3
%patti:0, grandparent[aux]12:1, spice:0, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {HuFaMo}  
 husband(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 4
%patti:0, grandparent[aux]12:1, spice:1, parents:0%
 Lvl=2,  PC=2, S=1, Star=0,  {WiMoMo}  
 wife(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 5
%patti:0, grandparent[aux]12:1, spice:1, parents:1%
 Lvl=2,  PC=2, S=1, Star=0,  {WiFaMo}  
 wife(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 6
%patti:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 7
%patti:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 8
%patti:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 9
%patti:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 10
%patti:0, grandparent[aux]12:2, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 11
%patti:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 12
%patti:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 13
%patti:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 14
%patti:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 15
%patti:0, grandparent[aux]12:2, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 16
%patti:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 17
%patti:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 18
%patti:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 19
%patti:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 20
%patti:0, grandparent[aux]12:2, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 21
%patti:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 22
%patti:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 23
%patti:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 24
%patti:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 25
%patti:0, grandparent[aux]12:2, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 26
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 27
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 28
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 29
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 30
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoMoFaSisDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 31
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuMoFaSis}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 32
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 33
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 34
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 35
%patti:0, grandparent[aux]12:3, spice:0, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuMoFaFaSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 36
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaMoSis}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 37
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 38
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoMoSisDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 39
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaBroDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 40
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaMoFaSisDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 41
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {HuFaFaSis}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 42
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoBroDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 43
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaMoSisDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 44
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaBroDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 45
%patti:0, grandparent[aux]12:3, spice:0, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {HuFaFaFaSisDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 46
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 47
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 48
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 49
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 50
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoMoFaSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 51
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiMoFaSis}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 52
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 53
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 54
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 55
%patti:0, grandparent[aux]12:3, spice:1, parents:0, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiMoFaFaSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 56
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaMoSis}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 57
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 58
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoMoSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 59
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 60
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaMoFaSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 61
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {WiFaFaSis}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 62
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoBroDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 63
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaMoSisDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 64
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaBroDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 65
%patti:0, grandparent[aux]12:3, spice:1, parents:1, parents:1, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=1, Star=0,  {WiFaFaFaSisDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).


pencati(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%pencati:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


peran(Alter, Ego) :-  grandchild[aux]12(Alter, Ego), male(Alter).
{"BroDaDaHu_BroDaSo_BroSoDaHu_BroSoSo_DaDaHu_DaSo_FaBroDaDaDaHu_FaBroDaDaSo_FaBroDaSoDaHu_FaBroDaSoSo_FaBroSoDaDaHu_FaBroSoDaSo_FaBroSoSoDaHu_FaBroSoSoSo_FaSisDaDaDaHu_FaSisDaDaSo_FaSisDaSoDaHu_FaSisDaSoSo_FaSisSoDaDaHu_FaSisSoDaSo_FaSisSoSoDaHu_FaSisSoSoSo_MoBroDaDaDaHu_MoBroDaDaSo_MoBroDaSoDaHu_MoBroDaSoSo_MoBroSoDaDaHu_MoBroSoDaSo_MoBroSoSoDaHu_MoBroSoSoSo_MoSisDaDaDaHu_MoSisDaDaSo_MoSisDaSoDaHu_MoSisDaSoSo_MoSisSoDaDaHu_MoSisSoDaSo_MoSisSoSoDaHu_MoSisSoSoSo_SisDaDaHu_SisDaSo_SisSoDaHu_SisSoSo_SoDaHu_SoSo"}
;; 0
%peran:0, grandchild[aux]12:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), child(Alter, A), male(Alter).
;; 1
%peran:0, grandchild[aux]12:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), child(Alter, A), male(Alter).
;; 2
%peran:0, grandchild[aux]12:1, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoDaHu}  
 son(A, Ego), child(B, A), spouse(Alter, B), male(Alter).
;; 3
%peran:0, grandchild[aux]12:1, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaDaHu}  
 daughter(A, Ego), child(B, A), spouse(Alter, B), male(Alter).
;; 4
%peran:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), male(Alter).
;; 5
%peran:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), male(Alter).
;; 6
%peran:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), male(Alter).
;; 7
%peran:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), male(Alter).
;; 8
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 9
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 10
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 11
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 12
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 13
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 14
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 15
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 16
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 17
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 18
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 19
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 20
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), male(Alter).
;; 21
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 22
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), male(Alter).
;; 23
%peran:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), male(Alter).
;; 24
%peran:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(Alter, E), male(Alter).
;; 25
%peran:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(Alter, E), male(Alter).
;; 26
%peran:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(Alter, E), male(Alter).
;; 27
%peran:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(Alter, E), male(Alter).
;; 28
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 29
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 30
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 31
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 32
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 33
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 34
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 35
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 36
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 37
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 38
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 39
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 40
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 41
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 42
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), male(Alter).
;; 43
%peran:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), male(Alter).


periyamma(Alter, Ego) :-  para_up1[aux]12elder(Alter, Ego), female(Alter).
{"FaBroWi_FaFaBroSoWi_FaFaSisDa_FaMoBroDa_FaMoSisSoWi_HuFaFaBroDa_HuFaMoSisDa_HuFaSis_HuMoFaSisDa_HuMoMoBroDa_MoFaBroDa_MoFaSisSoWi_MoMoBroSoWi_MoMoSisDa_MoSis_WiFaFaBroDa_WiFaMoSisDa_WiFaSis_WiMoFaSisDa_WiMoMoBroDa"}
;; 0
%periyamma:0, para_up1[aux]12elder:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A), female(Alter).
;; 1
%periyamma:0, para_up1[aux]12elder:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A), female(Alter).
;; 2
%periyamma:0, para_up1[aux]12elder:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A), female(Alter).
;; 3
%periyamma:0, para_up1[aux]12elder:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A), female(Alter).
;; 4
%periyamma:0, para_up1[aux]12elder:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A), female(Alter).
;; 5
%periyamma:0, para_up1[aux]12elder:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), elder(D, A), spouse(Alter, D), female(Alter).
;; 6
%periyamma:0, para_up1[aux]12elder:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoSisSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G), female(Alter).
;; 7
%periyamma:0, para_up1[aux]12elder:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaBroSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G), female(Alter).
;; 8
%periyamma:0, para_up1[aux]12elder:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoBroSoWi}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H), female(Alter).
;; 9
%periyamma:0, para_up1[aux]12elder:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaSisSoWi}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H), female(Alter).
;; 10
%periyamma:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaSis}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B), female(Alter).
;; 11
%periyamma:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), female(Alter).
;; 12
%periyamma:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), female(Alter).
;; 13
%periyamma:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoBroDa}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), female(Alter).
;; 14
%periyamma:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaSisDa}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), female(Alter).
;; 15
%periyamma:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaSis}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B), female(Alter).
;; 16
%periyamma:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), female(Alter).
;; 17
%periyamma:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), female(Alter).
;; 18
%periyamma:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoBroDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), female(Alter).
;; 19
%periyamma:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaSisDa}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), female(Alter).


periyappa(Alter, Ego) :-  para_up1[aux]12elder(Alter, Ego), male(Alter).
{"FaBro_FaFaBroSo_FaFaSisDaHu_FaMoBroDaHu_FaMoSisSo_HuFaFaSisSo_HuFaMoBroSo_HuMoBro_HuMoFaBroSo_HuMoMoSisSo_MoFaBroDaHu_MoFaSisSo_MoMoBroSo_MoMoSisDaHu_MoSisHu_WiFaFaSisSo_WiFaMoBroSo_WiMoBro_WiMoFaBroSo_WiMoMoSisSo"}
;; 0
%periyappa:0, para_up1[aux]12elder:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A), male(Alter).
;; 1
%periyappa:0, para_up1[aux]12elder:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A), male(Alter).
;; 2
%periyappa:0, para_up1[aux]12elder:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A), male(Alter).
;; 3
%periyappa:0, para_up1[aux]12elder:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A), male(Alter).
;; 4
%periyappa:0, para_up1[aux]12elder:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(Alter, D), gender(H, A), gender(I, Alter), not(equal(H, I)), elder(Alter, A), male(Alter).
;; 5
%periyappa:0, para_up1[aux]12elder:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), elder(D, A), spouse(Alter, D), male(Alter).
;; 6
%periyappa:0, para_up1[aux]12elder:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G), male(Alter).
;; 7
%periyappa:0, para_up1[aux]12elder:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G), male(Alter).
;; 8
%periyappa:0, para_up1[aux]12elder:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaMoBroDaHu}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H), male(Alter).
;; 9
%periyappa:0, para_up1[aux]12elder:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {FaFaSisDaHu}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), elder(H, A), spouse(Alter, H), male(Alter).
;; 10
%periyappa:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B), male(Alter).
;; 11
%periyappa:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), male(Alter).
;; 12
%periyappa:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), male(Alter).
;; 13
%periyappa:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoBroSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), male(Alter).
;; 14
%periyappa:0, para_up1[aux]12elder:2, spice:0, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaSisSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), male(Alter).
;; 15
%periyappa:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B), male(Alter).
;; 16
%periyappa:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), male(Alter).
;; 17
%periyappa:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B), male(Alter).
;; 18
%periyappa:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoBroSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), male(Alter).
;; 19
%periyappa:0, para_up1[aux]12elder:2, spice:1, odd_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaSisSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(H, C), not(equal(G, H)), child(Alter, E), gender(I, B), gender(I, Alter), elder(Alter, B), male(Alter).


petti(Alter, Ego) :-  grandchild[aux]12(Alter, Ego), female(Alter).
{"BroDaDa_BroDaSoWi_BroSoDa_BroSoSoWi_DaDa_DaSoWi_FaBroDaDaDa_FaBroDaDaSoWi_FaBroDaSoDa_FaBroDaSoSoWi_FaBroSoDaDa_FaBroSoDaSoWi_FaBroSoSoDa_FaBroSoSoSoWi_FaSisDaDaDa_FaSisDaDaSoWi_FaSisDaSoDa_FaSisDaSoSoWi_FaSisSoDaDa_FaSisSoDaSoWi_FaSisSoSoDa_FaSisSoSoSoWi_MoBroDaDaDa_MoBroDaDaSoWi_MoBroDaSoDa_MoBroDaSoSoWi_MoBroSoDaDa_MoBroSoDaSoWi_MoBroSoSoDa_MoBroSoSoSoWi_MoSisDaDaDa_MoSisDaDaSoWi_MoSisDaSoDa_MoSisDaSoSoWi_MoSisSoDaDa_MoSisSoDaSoWi_MoSisSoSoDa_MoSisSoSoSoWi_SisDaDa_SisDaSoWi_SisSoDa_SisSoSoWi_SoDa_SoSoWi"}
;; 0
%petti:0, grandchild[aux]12:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), child(Alter, A), female(Alter).
;; 1
%petti:0, grandchild[aux]12:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), child(Alter, A), female(Alter).
;; 2
%petti:0, grandchild[aux]12:1, children:0%
 Lvl=-2,  PC=2, S=1, Star=0,  {SoSoWi}  
 son(A, Ego), child(B, A), spouse(Alter, B), female(Alter).
;; 3
%petti:0, grandchild[aux]12:1, children:1%
 Lvl=-2,  PC=2, S=1, Star=0,  {DaSoWi}  
 daughter(A, Ego), child(B, A), spouse(Alter, B), female(Alter).
;; 4
%petti:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(Alter, D), female(Alter).
;; 5
%petti:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(Alter, D), female(Alter).
;; 6
%petti:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(Alter, D), female(Alter).
;; 7
%petti:0, grandchild[aux]12:2, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(Alter, D), female(Alter).
;; 8
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 9
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 10
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 11
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 12
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 13
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 14
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 15
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 16
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 17
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 18
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 19
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 20
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(Alter, F), female(Alter).
;; 21
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 22
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(Alter, F), female(Alter).
;; 23
%petti:0, grandchild[aux]12:2, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(Alter, F), female(Alter).
;; 24
%petti:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroSoSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), child(E, D), spouse(Alter, E), female(Alter).
;; 25
%petti:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {BroDaSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), child(E, D), spouse(Alter, E), female(Alter).
;; 26
%petti:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisSoSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), child(E, D), spouse(Alter, E), female(Alter).
;; 27
%petti:0, grandchild[aux]12:3, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {SisDaSoWi}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), child(E, D), spouse(Alter, E), female(Alter).
;; 28
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 29
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 30
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 31
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoBroDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 32
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 33
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisSoDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 34
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 35
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {MoSisDaDaSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 36
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 37
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 38
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 39
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaBroDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 40
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 41
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisSoDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 42
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaSoSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(F, E), child(G, F), spouse(Alter, G), female(Alter).
;; 43
%petti:0, grandchild[aux]12:3, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-2,  PC=8, S=1, Star=0,  {FaSisDaDaSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(F, E), child(G, F), spouse(Alter, G), female(Alter).


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


square[aux]12(Alter, Ego) :-  generation[aux]12(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]12(Alter, A).
;; 0
%square[aux]12:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 8
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 9
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 10
%square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 11
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 12
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 13
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 14
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 15
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 16
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 17
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 18
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 19
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 20
%square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 21
%square[aux]12:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 22
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 23
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 24
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 25
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 26
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 27
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 28
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 29
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 30
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 31
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 32
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 33
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 34
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 35
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 36
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 37
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 38
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 39
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 40
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 41
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 42
%square[aux]12:2, parents:0, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 43
%square[aux]12:2, parents:0, square[aux]12:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 44
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 45
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 46
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 47
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 48
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 49
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 50
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 51
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 52
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 53
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 54
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:0, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 55
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 56
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 57
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 58
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 59
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 60
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:0, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 61
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 62
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 63
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 64
%square[aux]12:2, parents:1, square[aux]12:0, generation[aux]12:1, parents:1, generation[aux]12gs:1, parents:1, generation[aux]12gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 65
%square[aux]12:2, parents:1, square[aux]12:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).


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


tampi(Alter, Ego) :-  brother(Alter, Ego), younger(Alter, Ego).
                  |  [ext],  parallel_cousin[aux]12(Alter, Ego), male(Alter), younger(Alter, Ego).
                  |  [ext],  spouse(A, Ego), cross_cousin[aux]12(Alter, A), male(Alter), younger(Alter, A).
                  |  [ext],  cross_cousin[aux]12(A, Ego), spouse(Alter, A), male(Alter), younger(A, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisDaSo_FaMoBroDaSo_FaMoSisSoSo_FaSisDaHu_HuFaSisSo_HuMoBroSo_MoBroDaHu_MoFaBroDaSo_MoFaSisSoSo_MoMoBroSoSo_MoMoSisDaSo_MoSisSo_WiFaSisSo_WiMoBroSo"}
;; 0
%tampi:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), younger(Alter, Ego).
;; 1
%tampi:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 2
%tampi:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 3
%tampi:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 4
%tampi:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 5
%tampi:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 6
%tampi:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 7
%tampi:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 8
%tampi:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 9
%tampi:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 10
%tampi:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 11
%tampi:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 12
%tampi:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 13
%tampi:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 14
%tampi:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 15
%tampi:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 16
%tampi:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter), younger(Alter, Ego).
;; 17
%tampi:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 18
%tampi:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter), younger(Alter, Ego).
;; 19
%tampi:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 20
%tampi:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter), younger(Alter, Ego).
;; 21
%tampi:2, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), younger(Alter, A).
;; 22
%tampi:2, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), younger(Alter, A).
;; 23
%tampi:2, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), younger(Alter, A).
;; 24
%tampi:2, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter), younger(Alter, A).
;; 25
%tampi:3, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), younger(G, Ego).
;; 26
%tampi:3, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), younger(G, Ego).
;; 27
%tampi:3, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), younger(G, Ego).
;; 28
%tampi:3, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), male(Alter), younger(G, Ego).


tankacci(Alter, Ego) :-  sister(Alter, Ego), younger(Alter, Ego).
                     |  [ext],  parallel_cousin[aux]12(Alter, Ego), female(Alter), younger(Alter, Ego).
                     |  [ext],  spouse(A, Ego), cross_cousin[aux]12(Alter, A), female(Alter), younger(Alter, A).
                     |  [ext],  cross_cousin[aux]12(A, Ego), spouse(Alter, A), female(Alter), younger(A, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaSisDaDa_FaMoBroDaDa_FaMoSisSoDa_FaSisSoWi_HuFaSisDa_HuMoBroDa_MoBroSoWi_MoFaBroDaDa_MoFaSisSoDa_MoMoBroSoDa_MoMoSisDaDa_MoSisDa_Sis_WiFaSisDa_WiMoBroDa"}
;; 0
%tankacci:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), younger(Alter, Ego).
;; 1
%tankacci:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 2
%tankacci:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 3
%tankacci:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 4
%tankacci:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 5
%tankacci:1, parallel_cousin[aux]12:0, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 6
%tankacci:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 7
%tankacci:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 8
%tankacci:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 9
%tankacci:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 10
%tankacci:1, parallel_cousin[aux]12:0, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 11
%tankacci:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 12
%tankacci:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 13
%tankacci:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 14
%tankacci:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 15
%tankacci:1, parallel_cousin[aux]12:1, parents:0, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 16
%tankacci:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter), younger(Alter, Ego).
;; 17
%tankacci:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:0, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 18
%tankacci:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:1, parents:1, even_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter), younger(Alter, Ego).
;; 19
%tankacci:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 20
%tankacci:1, parallel_cousin[aux]12:1, parents:1, even_gen[aux]12:2, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  female(Ego), father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(G, B), not(equal(F, G)), child(H, D), gender(I, A), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter), younger(Alter, Ego).
;; 21
%tankacci:2, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  spouse(A, Ego), female(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), younger(Alter, A).
;; 22
%tankacci:2, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  spouse(A, Ego), female(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), younger(Alter, A).
;; 23
%tankacci:2, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  spouse(A, Ego), male(A), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), younger(Alter, A).
;; 24
%tankacci:2, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
[ext],  spouse(A, Ego), male(A), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter), younger(Alter, A).
;; 25
%tankacci:3, cross_cousin[aux]12:0, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), younger(G, Ego).
;; 26
%tankacci:3, cross_cousin[aux]12:0, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), younger(G, Ego).
;; 27
%tankacci:3, cross_cousin[aux]12:1, parents:0, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), younger(G, Ego).
;; 28
%tankacci:3, cross_cousin[aux]12:1, parents:1, odd_gen[aux]12:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), spouse(Alter, G), female(Alter), younger(G, Ego).

