;;  Horn Clause Representation of Marathi Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Marathi") (author, "Thomas R. Trautmann") (date, "1981-01-01") (citation, "Thomas R. Trautmann DRAVIDIAN KINSHIP, 1981, Cambridge University Press, New York") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, false) (address, false) (recursiveLevels, 2)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

ai(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%ai:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


aji(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                |  [ext],  parents(A, Ego), parents(B, A), sister(Alter, B).
                |  [ext],  parents(A, Ego), parents(B, A), brother(C, B), wife(Alter, C).
{"FaFaBroWi_FaFaSis_FaMo_FaMoBroWi_FaMoSis_MoFaBroWi_MoFaSis_MoMo_MoMoBroWi_MoMoSis"}
;; 0
%aji:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%aji:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%aji:1, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%aji:1, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 4
%aji:1, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 5
%aji:1, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 6
%aji:2, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoBroWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 7
%aji:2, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaBroWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 8
%aji:2, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoBroWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 9
%aji:2, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaBroWi}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).


ajoba(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                  |  [ext],  parents(A, Ego), parents(B, A), brother(Alter, B).
                  |  [ext],  parents(A, Ego), parents(B, A), sister(C, B), husband(Alter, C).
{"FaFa_FaFaBro_FaFaSisHu_FaMoBro_FaMoSisHu_MoFa_MoFaBro_MoFaSisHu_MoMoBro_MoMoSisHu"}
;; 0
%ajoba:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ajoba:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%ajoba:1, parents:0, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%ajoba:1, parents:0, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 4
%ajoba:1, parents:1, parents:0, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 5
%ajoba:1, parents:1, parents:1, brother:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 6
%ajoba:2, parents:0, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoMoSisHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 7
%ajoba:2, parents:0, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {MoFaSisHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 8
%ajoba:2, parents:1, parents:0, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaMoSisHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 9
%ajoba:2, parents:1, parents:1, sister:0, sibling:0%
 Lvl=2,  PC=6, S=1, Star=0,  {FaFaSisHu}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).


bahin(Alter, Ego) :-  sister(Alter, Ego).
                  |  [ext],  parallel_cousin[aux]29(Alter, Ego), female(Alter).
                  |  [ext],  spice(A, Ego), cross_cousin[aux]29(Alter, A), female(Alter).
                  |  [ext],  cross_cousin[aux]29(A, Ego), wife(Alter, A).
                  |  [ext],  wife(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroDa_FaFaBroDaSoWi_FaFaBroSoDa_FaMoSisDaSoWi_FaMoSisSoDa_FaSisSoWi_HuFaFaBroDaDa_HuFaMoSisDaDa_HuFaSisDa_HuMoBroDa_HuMoFaBroSoDa_HuMoMoSisSoDa_MoBroSoWi_MoFaBroDaDa_MoFaBroSoSoWi_MoMoSisDaDa_MoMoSisSoSoWi_MoSisDa_Sis_WiBroWi_WiFaFaBroDaDa_WiFaMoSisDaDa_WiFaSisDa_WiMoBroDa_WiMoFaBroSoDa_WiMoMoSisSoDa"}
;; 0
%bahin:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 1
%bahin:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter).
;; 2
%bahin:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter).
;; 3
%bahin:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter).
;; 4
%bahin:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), female(Alter).
;; 5
%bahin:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter).
;; 6
%bahin:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), female(Alter).
;; 7
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter).
;; 8
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoDa}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 9
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 10
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter).
;; 11
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaDa}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 12
%bahin:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaDa}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 13
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter).
;; 14
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 15
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 16
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), female(Alter).
;; 17
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 18
%bahin:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaDa}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), female(Alter).
;; 19
%bahin:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroSoWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), wife(Alter, G).
;; 20
%bahin:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoSoWi}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), wife(Alter, J).
;; 21
%bahin:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoSoWi}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), wife(Alter, J).
;; 22
%bahin:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), wife(Alter, G).
;; 23
%bahin:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaSoWi}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), wife(Alter, J).
;; 24
%bahin:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaSoWi}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), wife(Alter, J).
;; 25
%bahin:4, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {WiBroWi}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


bayko(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%bayko:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


bhaca(Alter, Ego) :-  male(Ego), odd_gen[aux]29(A, Ego), son(Alter, A).
                  |   female(Ego), brother(A, Ego), son(Alter, A).
                  |  [ext],  wife(A, Ego), brother(B, A), son(Alter, B).
                  |  [ext],  husband(A, Ego), sister(B, A), son(Alter, B).
{"BroSo_FaBroDaSo_FaFaBroSoDaSo_FaMoSisSoDaSo_HuSisSo_MoFaBroDaDaSo_MoMoSisDaDaSo_MoSisDaSo_SisSo_WiBroSo"}
;; 0
%bhaca:0, odd_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), son(Alter, C).
;; 1
%bhaca:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 2
%bhaca:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 3
%bhaca:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 4
%bhaca:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), son(Alter, F).
;; 5
%bhaca:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 6
%bhaca:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), son(Alter, I).
;; 7
%bhaca:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 8
%bhaca:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 9
%bhaca:3, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).


bhaci(Alter, Ego) :-  male(Ego), odd_gen[aux]29(A, Ego), daughter(Alter, A).
                  |   female(Ego), brother(A, Ego), daughter(Alter, A).
                  |  [ext],  wife(A, Ego), brother(B, A), daughter(Alter, B).
                  |  [ext],  husband(A, Ego), sister(B, A), daughter(Alter, B).
{"BroDa_FaBroDaDa_FaFaBroSoDaDa_FaMoSisSoDaDa_HuSisDa_MoFaBroDaDaDa_MoMoSisDaDaDa_MoSisDaDa_SisDa_WiBroDa"}
;; 0
%bhaci:0, odd_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(E, C), not(equal(D, E)), daughter(Alter, C).
;; 1
%bhaci:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 2
%bhaci:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 3
%bhaci:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 4
%bhaci:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(H, F), not(equal(G, H)), daughter(Alter, F).
;; 5
%bhaci:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 6
%bhaci:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(K, I), not(equal(J, K)), daughter(Alter, I).
;; 7
%bhaci:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 8
%bhaci:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiBroDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 9
%bhaci:3, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuSisDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).


bhau(Alter, Ego) :-  brother(Alter, Ego).
                 |  [ext],  parallel_cousin[aux]29(Alter, Ego), male(Alter).
                 |  [ext],  spice(A, Ego), cross_cousin[aux]29(Alter, A), male(Alter).
                 |  [ext],  cross_cousin[aux]29(A, Ego), husband(Alter, A).
{"Bro_FaBroSo_FaFaBroDaDaHu_FaFaBroSoSo_FaMoSisDaDaHu_FaMoSisSoSo_FaSisDaHu_HuFaFaBroDaSo_HuFaMoSisDaSo_HuFaSisSo_HuMoBroSo_HuMoFaBroSoSo_HuMoMoSisSoSo_MoBroDaHu_MoFaBroDaSo_MoFaBroSoDaHu_MoMoSisDaSo_MoMoSisSoDaHu_MoSisSo_WiFaFaBroDaSo_WiFaMoSisDaSo_WiFaSisSo_WiMoBroSo_WiMoFaBroSoSo_WiMoMoSisSoSo"}
;; 0
%bhau:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%bhau:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter).
;; 2
%bhau:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter).
;; 3
%bhau:1, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter).
;; 4
%bhau:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D), male(Alter).
;; 5
%bhau:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter).
;; 6
%bhau:1, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G), male(Alter).
;; 7
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoBroSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter).
;; 8
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisSoSo}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 9
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroSoSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 10
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaSisSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter).
;; 11
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisDaSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 12
%bhau:2, spice:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroDaSo}  
[ext],  husband(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 13
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoBroSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter).
;; 14
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisSoSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 15
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroSoSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 16
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaSisSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(G, E), not(equal(F, G)), child(Alter, E), male(Alter).
;; 17
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisDaSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 18
%bhau:2, spice:1, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroDaSo}  
[ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(J, H), not(equal(I, J)), child(Alter, H), male(Alter).
;; 19
%bhau:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoBroDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), husband(Alter, G).
;; 20
%bhau:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisSoDaHu}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), husband(Alter, J).
;; 21
%bhau:3, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroSoDaHu}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), husband(Alter, J).
;; 22
%bhau:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaSisDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(G, D), husband(Alter, G).
;; 23
%bhau:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisDaDaHu}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), husband(Alter, J).
;; 24
%bhau:3, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroDaDaHu}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(J, G), husband(Alter, J).


bhavjay(Alter, Ego) :-  male(Ego), brother(A, Ego), wife(Alter, A).
                    |  [ext],  father(A, Ego), brother(B, A), son(C, B), wife(Alter, C).
{"BroWi_FaBroSoWi"}
;; 0
%bhavjay:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 1
%bhavjay:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).


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


cross_cousin[aux]29(Alter, Ego) :-  parents(A, Ego), odd_gen[aux]29(B, A), child(Alter, B).
;; 0
%cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 1
%cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 2
%cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 3
%cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D).
;; 4
%cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).
;; 5
%cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G).


cross_up1[aux]29(Alter, Ego) :-  parent(A, Ego), odd_gen[aux]29(Alter, A).
                             |  [ext],  parent(A, Ego), odd_gen[aux]29(B, A), spouse(Alter, B).
                             |  [ext],  spice(A, Ego), parent(B, A), even_gen[aux]29(Alter, B).
;; 0
%cross_up1[aux]29:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%cross_up1[aux]29:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 2
%cross_up1[aux]29:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 3
%cross_up1[aux]29:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), spouse(Alter, D).
;; 4
%cross_up1[aux]29:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G).
;; 5
%cross_up1[aux]29:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), spouse(Alter, G).
;; 6
%cross_up1[aux]29:2, spice:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter).
;; 7
%cross_up1[aux]29:2, spice:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 8
%cross_up1[aux]29:2, spice:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 9
%cross_up1[aux]29:2, spice:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(E, Alter).
;; 10
%cross_up1[aux]29:2, spice:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).
;; 11
%cross_up1[aux]29:2, spice:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(H, Alter).


culta(Alter, Ego) :-  para_up1[aux]29(Alter, Ego), male(Alter).
{"FaBro_FaFaBroSo_FaMoSisSo_HuMoBro_HuMoFaBroSo_HuMoMoSisSo_MoFaBroDaHu_MoMoSisDaHu_MoSisHu_WiMoBro_WiMoFaBroSo_WiMoMoSisSo"}
;; 0
%culta:0, para_up1[aux]29:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), male(Alter).
;; 1
%culta:0, para_up1[aux]29:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), male(Alter).
;; 2
%culta:0, para_up1[aux]29:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), male(Alter).
;; 3
%culta:0, para_up1[aux]29:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoSisHu}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), spouse(Alter, D), male(Alter).
;; 4
%culta:0, para_up1[aux]29:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoMoSisDaHu}  
[ext], [ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G), male(Alter).
;; 5
%culta:0, para_up1[aux]29:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {MoFaBroDaHu}  
[ext], [ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G), male(Alter).
;; 6
%culta:0, para_up1[aux]29:2, spice:0, odd_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoBro}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), male(Alter).
;; 7
%culta:0, para_up1[aux]29:2, spice:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), male(Alter).
;; 8
%culta:0, para_up1[aux]29:2, spice:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), male(Alter).
;; 9
%culta:0, para_up1[aux]29:2, spice:1, odd_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoBro}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), male(Alter).
;; 10
%culta:0, para_up1[aux]29:2, spice:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisSo}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), male(Alter).
;; 11
%culta:0, para_up1[aux]29:2, spice:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroSo}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), male(Alter).


culti(Alter, Ego) :-  father(A, Ego), brother(B, A), wife(Alter, B).
{"FaBroWi"}
;; 0
%culti:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaBroWi}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


dir(Alter, Ego) :-  husband(A, Ego), brother(Alter, A).
                |  [ext],  husband(A, Ego), father(B, A), brother(C, B), son(Alter, C).
{"HuBro_HuFaBroSo"}
;; 0
%dir:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%dir:1, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(Alter, E).


even_gen[aux]29(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(A, Alter).
                            |  [ext],  parents(A, Ego), even_gen[aux]29(A, B), child(Alter, B), gender(C, Ego), gender(C, Alter).
;; 0
%even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 1
%even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 2
%even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 3
%even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 4
%even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 5
%even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 6
%even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 7
%even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(C, Alter).
;; 8
%even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 9
%even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 10
%even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 11
%even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(F, Alter).
;; 12
%even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).
;; 13
%even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(I, Alter).


generation[aux]29(Alter, Ego) :-  sibling(Alter, Ego).
                              |   parents(A, Ego), generation[aux]29(B, A), child(Alter, B).
;; 0
%generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%generation[aux]29:1, parents:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%generation[aux]29:1, parents:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%generation[aux]29:1, parents:1, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%generation[aux]29:1, parents:1, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).


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


jau(Alter, Ego) :-  husband(A, Ego), brother(B, A), wife(Alter, B).
{"HuBroWi"}
;; 0
%jau:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuBroWi}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


javai(Alter, Ego) :-  daughter(A, Ego), husband(Alter, A).
                  |  [ext],  male(Ego), brother(A, Ego), daughter(B, A), husband(Alter, B).
                  |  [ext],  husband(A, Ego), brother(B, A), daughter(C, B), husband(Alter, C).
                  |  [ext],  sister(A, Ego), daughter(B, A), husband(Alter, B).
{"BroDaHu_DaHu_HuBroDaHu_SisDaHu"}
;; 0
%javai:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 daughter(A, Ego), husband(Alter, A).
;; 1
%javai:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroDaHu}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), husband(Alter, D).
;; 2
%javai:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroDaHu}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), husband(Alter, E).
;; 3
%javai:3, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).


mama(Alter, Ego) :-  mother(A, Ego), odd_gen[aux]29(Alter, A).
                 |  [ext],  father(A, Ego), sister(B, A), husband(Alter, B).
{"FaSisHu_MoBro_MoFaBroSo_MoMoSisSo"}
;; 0
%mama:0, odd_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%mama:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 2
%mama:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 3
%mama:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {FaSisHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


mami(Alter, Ego) :-  father(A, Ego), odd_gen[aux]29(Alter, A).
                 |  [ext],  mother(A, Ego), brother(B, A), wife(Alter, B).
{"FaFaBroDa_FaMoSisDa_FaSis_MoBroWi"}
;; 0
%mami:0, odd_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(E, Alter), not(equal(D, E)).
;; 1
%mami:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 2
%mami:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(H, Alter), not(equal(G, H)).
;; 3
%mami:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {MoBroWi}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), wife(Alter, D).


mavsi(Alter, Ego) :-  mother(A, Ego), even_gen[aux]29(Alter, A), female(Alter).
{"MoFaBroDa_MoMoSisDa_MoSis"}
;; 0
%mavsi:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), female(Alter).
;; 1
%mavsi:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), female(Alter).
;; 2
%mavsi:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), female(Alter).


mehuna(Alter, Ego) :-  cross_cousin[aux]29(Alter, Ego), male(Alter).
                   |   wife(A, Ego), brother(Alter, A).
                   |   sister(A, Ego), husband(Alter, A).
                   |  [ext],  wife(A, Ego), parallel_cousin[aux]29(Alter, A), male(Alter).
                   |  [ext],  parallel_cousin[aux]29(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroDaSo_FaFaBroSoDaHu_FaMoSisDaSo_FaMoSisSoDaHu_FaSisSo_MoBroSo_MoFaBroDaDaHu_MoFaBroSoSo_MoMoSisDaDaHu_MoMoSisSoSo_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaBroSoSo_WiFaMoSisSoSo_WiMoFaBroDaSo_WiMoMoSisDaSo_WiMoSisSo"}
;; 0
%mehuna:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), male(Alter).
;; 1
%mehuna:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), male(Alter).
;; 2
%mehuna:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), male(Alter).
;; 3
%mehuna:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), male(Alter).
;; 4
%mehuna:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), male(Alter).
;; 5
%mehuna:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), male(Alter).
;; 6
%mehuna:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 7
%mehuna:2, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 8
%mehuna:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), male(Alter).
;; 9
%mehuna:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), male(Alter).
;; 10
%mehuna:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), male(Alter).
;; 11
%mehuna:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), male(Alter).
;; 12
%mehuna:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), male(Alter).
;; 13
%mehuna:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), male(Alter).
;; 14
%mehuna:4, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F).
;; 15
%mehuna:4, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I).
;; 16
%mehuna:4, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I).
;; 17
%mehuna:4, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(F, D), husband(Alter, F).
;; 18
%mehuna:4, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I).
;; 19
%mehuna:4, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(I, G), husband(Alter, I).


mehuni(Alter, Ego) :-  cross_cousin[aux]29(Alter, Ego), female(Alter).
                   |   wife(A, Ego), sister(Alter, A).
                   |   female(Ego), brother(A, Ego), wife(Alter, A).
                   |  [ext],  wife(A, Ego), parallel_cousin[aux]29(Alter, A), female(Alter).
{"BroWi_FaFaBroDaDa_FaMoSisDaDa_FaSisDa_MoBroDa_MoFaBroSoDa_MoMoSisSoDa_WiFaBroDa_WiFaFaBroSoDa_WiFaMoSisSoDa_WiMoFaBroDaDa_WiMoMoSisDaDa_WiMoSisDa_WiSis"}
;; 0
%mehuni:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), female(Alter).
;; 1
%mehuni:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
 mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), female(Alter).
;; 2
%mehuni:0, cross_cousin[aux]29:0, parents:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
 mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), female(Alter).
;; 3
%mehuni:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(F, D), not(equal(E, F)), child(Alter, D), female(Alter).
;; 4
%mehuni:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
 father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), female(Alter).
;; 5
%mehuni:0, cross_cousin[aux]29:0, parents:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
 father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(I, G), not(equal(H, I)), child(Alter, G), female(Alter).
;; 6
%mehuni:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 7
%mehuni:2, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 8
%mehuni:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), female(Alter).
;; 9
%mehuni:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), female(Alter).
;; 10
%mehuni:3, parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), female(Alter).
;; 11
%mehuni:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), gender(F, B), gender(F, E), child(Alter, E), female(Alter).
;; 12
%mehuni:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext], [ext],  wife(A, Ego), father(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), female(Alter).
;; 13
%mehuni:3, parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext], [ext],  wife(A, Ego), father(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(H, E), gender(I, B), gender(I, H), child(Alter, H), female(Alter).


mulga(Alter, Ego) :-  son(Alter, Ego).
                  |  [ext],  wife(A, Ego), sister(B, A), son(Alter, B).
                  |   female(Ego), sister(A, Ego), son(Alter, A).
{"SisSo_So_WiSisSo"}
;; 0
%mulga:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 son(Alter, Ego).
;; 1
%mulga:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisSo}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 2
%mulga:2, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).


mulgi(Alter, Ego) :-  daughter(Alter, Ego).
                  |  [ext],  wife(A, Ego), sister(B, A), daughter(Alter, B).
                  |   female(Ego), sister(A, Ego), daughter(Alter, A).
{"Da_SisDa_WiSisDa"}
;; 0
%mulgi:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 daughter(Alter, Ego).
;; 1
%mulgi:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {WiSisDa}  
[ext],  wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 2
%mulgi:2, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).


nanada(Alter, Ego) :-  husband(A, Ego), sister(B, A), husband(Alter, B).
{"HuSisHu"}
;; 0
%nanada:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=2, Star=0,  {HuSisHu}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), husband(Alter, D).


nanand(Alter, Ego) :-  husband(A, Ego), sister(Alter, A).
{"HuSis"}
;; 0
%nanand:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).


navra(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%navra:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


odd_gen[aux]29(Alter, Ego) :-  sibling(Alter, Ego), gender(A, Ego), gender(B, Alter), not(equal(A, B)).
                           |   parents(A, Ego), even_gen[aux]29(A, B), child(Alter, B), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 0
%odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 1
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 2
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 3
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 4
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 5
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 6
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 7
%odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), gender(C, Ego), gender(D, Alter), not(equal(C, D)).
;; 8
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 9
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 10
%odd_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 11
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 female(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(Alter, C), gender(F, Ego), gender(G, Alter), not(equal(F, G)).
;; 12
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).
;; 13
%odd_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  female(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(Alter, C), gender(I, Ego), gender(J, Alter), not(equal(I, J)).


para_up1[aux]29(Alter, Ego) :-  parent(A, Ego), even_gen[aux]29(Alter, A).
                            |  [ext],  parent(A, Ego), even_gen[aux]29(B, A), spouse(Alter, B).
                            |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]29(Alter, B).
;; 0
%para_up1[aux]29:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter).
;; 1
%para_up1[aux]29:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter).
;; 2
%para_up1[aux]29:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter).
;; 3
%para_up1[aux]29:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), spouse(Alter, D).
;; 4
%para_up1[aux]29:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G).
;; 5
%para_up1[aux]29:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), spouse(Alter, G).
;; 6
%para_up1[aux]29:2, spice:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)).
;; 7
%para_up1[aux]29:2, spice:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 8
%para_up1[aux]29:2, spice:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 9
%para_up1[aux]29:2, spice:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)).
;; 10
%para_up1[aux]29:2, spice:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).
;; 11
%para_up1[aux]29:2, spice:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)).


para_up1[aux]29elder(Alter, Ego) :-  parent(A, Ego), even_gen[aux]29(Alter, A), elder(Alter, A).
                                 |  [ext],  parent(A, Ego), even_gen[aux]29(B, A), elder(B, A), spouse(Alter, B).
                                 |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]29(Alter, B), elder(Alter, B).
;; 0
%para_up1[aux]29elder:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), elder(Alter, A).
;; 1
%para_up1[aux]29elder:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 2
%para_up1[aux]29elder:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), elder(Alter, A).
;; 3
%para_up1[aux]29elder:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), elder(D, A), spouse(Alter, D).
;; 4
%para_up1[aux]29elder:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G).
;; 5
%para_up1[aux]29elder:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), elder(G, A), spouse(Alter, G).
;; 6
%para_up1[aux]29elder:2, spice:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B).
;; 7
%para_up1[aux]29elder:2, spice:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 8
%para_up1[aux]29elder:2, spice:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 9
%para_up1[aux]29elder:2, spice:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), elder(Alter, B).
;; 10
%para_up1[aux]29elder:2, spice:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).
;; 11
%para_up1[aux]29elder:2, spice:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), elder(Alter, B).


para_up1[aux]29younger(Alter, Ego) :-  parent(A, Ego), even_gen[aux]29(Alter, A), younger(Alter, A).
                                   |  [ext],  parent(A, Ego), even_gen[aux]29(B, A), younger(B, A), spouse(Alter, B).
                                   |  [ext],  spice(A, Ego), parent(B, A), odd_gen[aux]29(Alter, B), younger(Alter, B).
;; 0
%para_up1[aux]29younger:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), gender(D, A), gender(D, Alter), younger(Alter, A).
;; 1
%para_up1[aux]29younger:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A).
;; 2
%para_up1[aux]29younger:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(Alter, D), gender(G, A), gender(G, Alter), younger(Alter, A).
;; 3
%para_up1[aux]29younger:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), younger(D, A), spouse(Alter, D).
;; 4
%para_up1[aux]29younger:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G).
;; 5
%para_up1[aux]29younger:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), younger(G, A), spouse(Alter, G).
;; 6
%para_up1[aux]29younger:2, spice:0, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B).
;; 7
%para_up1[aux]29younger:2, spice:0, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 8
%para_up1[aux]29younger:2, spice:0, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  husband(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 9
%para_up1[aux]29younger:2, spice:1, odd_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), gender(E, B), gender(F, Alter), not(equal(E, F)), younger(Alter, B).
;; 10
%para_up1[aux]29younger:2, spice:1, odd_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), mother(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).
;; 11
%para_up1[aux]29younger:2, spice:1, odd_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  wife(A, Ego), parent(B, A), father(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), gender(G, E), gender(G, C), child(Alter, E), gender(H, B), gender(I, Alter), not(equal(H, I)), younger(Alter, B).


parallel_cousin[aux]29(Alter, Ego) :-  parents(A, Ego), even_gen[aux]29(B, A), child(Alter, B).
;; 0
%parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 1
%parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 2
%parallel_cousin[aux]29:0, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 3
%parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), gender(E, A), gender(E, D), child(Alter, D).
;; 4
%parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).
;; 5
%parallel_cousin[aux]29:0, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), gender(F, D), gender(F, B), child(G, D), gender(H, A), gender(H, G), child(Alter, G).


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


peran(Alter, Ego) :-  children(A, Ego), son(Alter, A).
                  |   siblings(A, Ego), children(B, A), son(Alter, B).
                  |   spice(A, Ego), siblings(B, A), children(C, B), son(Alter, C).
{"BroDaSo_BroSoSo_DaSo_HuBroDaSo_HuBroSoSo_HuSisDaSo_HuSisSoSo_SisDaSo_SisSoSo_SoSo_WiBroDaSo_WiBroSoSo_WiSisDaSo_WiSisSoSo"}
;; 0
%peran:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 son(A, Ego), son(Alter, A).
;; 1
%peran:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 daughter(A, Ego), son(Alter, A).
;; 2
%peran:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), son(Alter, D).
;; 3
%peran:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), son(Alter, D).
;; 4
%peran:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), son(Alter, D).
;; 5
%peran:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), son(Alter, D).
;; 6
%peran:2, spice:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 7
%peran:2, spice:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 8
%peran:2, spice:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 9
%peran:2, spice:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaSo}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).
;; 10
%peran:2, spice:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), son(Alter, E).
;; 11
%peran:2, spice:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), son(Alter, E).
;; 12
%peran:2, spice:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), son(Alter, E).
;; 13
%peran:2, spice:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaSo}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), son(Alter, E).


petti(Alter, Ego) :-  children(A, Ego), daughter(Alter, A).
                  |   siblings(A, Ego), children(B, A), daughter(Alter, B).
                  |   spice(A, Ego), siblings(B, A), children(C, B), daughter(Alter, C).
{"BroDaDa_BroSoDa_DaDa_HuBroDaDa_HuBroSoDa_HuSisDaDa_HuSisSoDa_SisDaDa_SisSoDa_SoDa_WiBroDaDa_WiBroSoDa_WiSisDaDa_WiSisSoDa"}
;; 0
%petti:0, children:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 son(A, Ego), daughter(Alter, A).
;; 1
%petti:0, children:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 daughter(A, Ego), daughter(Alter, A).
;; 2
%petti:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), daughter(Alter, D).
;; 3
%petti:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(D, C), daughter(Alter, D).
;; 4
%petti:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), daughter(Alter, D).
;; 5
%petti:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), daughter(Alter, D).
;; 6
%petti:2, spice:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 7
%petti:2, spice:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuBroDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 8
%petti:2, spice:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisSoDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 9
%petti:2, spice:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {HuSisDaDa}  
 husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).
;; 10
%petti:2, spice:1, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), daughter(Alter, E).
;; 11
%petti:2, spice:1, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiBroDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(E, D), daughter(Alter, E).
;; 12
%petti:2, spice:1, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisSoDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(E, D), daughter(Alter, E).
;; 13
%petti:2, spice:1, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-2,  PC=6, S=1, Star=0,  {WiSisDaDa}  
 wife(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(E, D), daughter(Alter, E).


putani(Alter, Ego) :-  male(Ego), even_gen[aux]29(A, Ego), daughter(Alter, A).
                   |  [ext],  husband(A, Ego), brother(B, A), daughter(Alter, B).
{"BroDa_FaBroSoDa_FaFaBroSoSoDa_FaMoSisSoSoDa_HuBroDa_MoFaBroDaSoDa_MoMoSisDaSoDa_MoSisSoDa"}
;; 0
%putani:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), daughter(Alter, C).
;; 1
%putani:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 2
%putani:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), daughter(Alter, I).
;; 3
%putani:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext], [ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), daughter(Alter, I).
;; 4
%putani:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), daughter(Alter, F).
;; 5
%putani:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), daughter(Alter, I).
;; 6
%putani:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), daughter(Alter, I).
;; 7
%putani:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroDa}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).


putanya(Alter, Ego) :-  male(Ego), even_gen[aux]29(A, Ego), son(Alter, A).
                    |  [ext],  husband(A, Ego), brother(B, A), son(Alter, B).
{"BroSo_FaBroSoSo_FaFaBroSoSoSo_FaMoSisSoSoSo_HuBroSo_MoFaBroDaSoSo_MoMoSisDaSoSo_MoSisSoSo"}
;; 0
%putanya:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), gender(D, Ego), gender(D, C), son(Alter, C).
;; 1
%putanya:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext],  male(Ego), mother(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 2
%putanya:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), son(Alter, I).
;; 3
%putanya:0, even_gen[aux]29:1, parents:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext], [ext],  male(Ego), mother(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), son(Alter, I).
;; 4
%putanya:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext],  male(Ego), father(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), gender(E, C), gender(E, A), child(F, C), gender(G, Ego), gender(G, F), son(Alter, F).
;; 5
%putanya:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:0, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), son(Alter, I).
;; 6
%putanya:0, even_gen[aux]29:1, parents:1, even_gen[aux]29:1, parents:1, even_gen[aux]29:0, sibling:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, C), mother(D, E), father(F, E), child(B, D), child(B, F), not(equal(B, E)), gender(G, E), gender(G, B), child(A, E), gender(H, C), gender(H, A), child(I, C), gender(J, Ego), gender(J, I), son(Alter, I).
;; 7
%putanya:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {HuBroSo}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).


sasra(Alter, Ego) :-  spice(A, Ego), father(Alter, A).
                  |   wife(A, Ego), father(B, A), brother(Alter, B).
{"HuFa_WiFa_WiFaBro"}
;; 0
%sasra:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%sasra:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 2
%sasra:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
 wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).


sasu(Alter, Ego) :-  spice(A, Ego), mother(Alter, A).
                 |  [ext],  spice(A, Ego), father(B, A), brother(C, B), wife(Alter, C).
                 |  [ext],  wife(A, Ego), mother(B, A), sister(Alter, B).
{"HuFaBroWi_HuMo_WiFaBroWi_WiMo_WiMoSis"}
;; 0
%sasu:0, spice:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%sasu:0, spice:1%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 2
%sasu:1, spice:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaBroWi}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 3
%sasu:1, spice:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaBroWi}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 4
%sasu:2, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).


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


square[aux]29(Alter, Ego) :-  generation[aux]29(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parent(A, Ego), square[aux]29(Alter, A).
;; 0
%square[aux]29:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 2
%square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 3
%square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 4
%square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), child(Alter, D).
;; 5
%square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 6
%square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(F, E), child(Alter, F).
;; 7
%square[aux]29:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 8
%square[aux]29:2, square[aux]29:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 9
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 10
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 11
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 12
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), child(Alter, E).
;; 13
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 14
%square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(G, F), child(Alter, G).
;; 15
%square[aux]29:2, square[aux]29:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(Alter, A).
;; 16
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 17
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 18
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 19
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 20
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), child(Alter, F).
;; 21
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:0, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 22
%square[aux]29:2, square[aux]29:2, square[aux]29:0, generation[aux]29:1, parents:1, generation[aux]29:1, parents:1, generation[aux]29:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), child(H, G), child(Alter, H).
;; 23
%square[aux]29:2, square[aux]29:2, square[aux]29:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), parent(B, A), parent(Alter, B).


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


sun(Alter, Ego) :-  son(A, Ego), wife(Alter, A).
                |  [ext],  male(Ego), brother(A, Ego), son(B, A), wife(Alter, B).
                |  [ext],  husband(A, Ego), brother(B, A), son(C, B), wife(Alter, C).
{"BroSoWi_HuBroSoWi_SoWi"}
;; 0
%sun:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 son(A, Ego), wife(Alter, A).
;; 1
%sun:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {BroSoWi}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(D, C), wife(Alter, D).
;; 2
%sun:2, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=2, Star=0,  {HuBroSoWi}  
[ext],  husband(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(E, D), wife(Alter, E).


vadil(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%vadil:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
 father(Alter, Ego).


vihin(Alter, Ego) :-  children(A, Ego), spouse(B, A), mother(Alter, B).
{"DaHuMo_SoWiMo"}
;; 0
%vihin:0, children:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiMo}  
 son(A, Ego), spouse(B, A), mother(Alter, B).
;; 1
%vihin:0, children:1%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuMo}  
 daughter(A, Ego), spouse(B, A), mother(Alter, B).


vyahi(Alter, Ego) :-  children(A, Ego), spouse(B, A), father(Alter, B).
                  |  [ext],  sister(A, Ego), daughter(B, A), husband(C, B), father(Alter, C).
{"DaHuFa_SisDaHuFa_SoWiFa"}
;; 0
%vyahi:0, children:0%
 Lvl=0,  PC=2, S=1, Star=0,  {SoWiFa}  
 son(A, Ego), spouse(B, A), father(Alter, B).
;; 1
%vyahi:0, children:1%
 Lvl=0,  PC=2, S=1, Star=0,  {DaHuFa}  
 daughter(A, Ego), spouse(B, A), father(Alter, B).
;; 2
%vyahi:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {SisDaHuFa}  
[ext],  mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(E, D), father(Alter, E).

